a=19; 
b=22;   
c=27;
configurePin(r,25,'DigitalOutput')
s = servo(r,25,'MinPulseDuration',1e-3,'MaxPulseDuration',2e-3);
configurePin(r,a,'PWM');  
configurePin(r,b,'DigitalOutput');
configurePin(r,c,'DigitalOutput'); 
while(1)  
 j=readDigitalPin(r,6); 
 k=readDigitalPin(r,20);
if k==0  
   writePosition(s,0);
end 
if j==0
   writePosition(s,90);
end 
    i=readDigitalPin(r,26);  
     if(i==1) %&& (j==1) 
        d=1;  
     end
    if i==0
        d=0.4;
     end                
writePWMDutyCycle(r,a,d);%d=0.4 for i=0 
writeDigitalPin(r,b,0); 
writeDigitalPin(r,c,1);
end   


