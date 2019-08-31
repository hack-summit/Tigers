
a=19; 
b=22;  
c=27;
configurePin(r,a,'DigitalOutput'); 
configurePin(r,b,'DigitalOutput'); 
configurePin(r,c,'DigitalOutput');
writeDigitalPin(r,a,1);
writeDigitalPin(r,b,0); 
writeDigitalPin(r,c,1);
pause(10) 
writeDigitalPin(r,c,0);
