
trig=21;
echo=20;
configurePin(r,echo,'DigitalInput')
configurePin(r,trig,'DigitalOutput')
writeDigitalPin(r,trig,0)
pause(1)
writeDigitalPin(r,trig,1)
pause(0.00001) 
writeDigitalPin(r,trig,0) 
while(1)
readDigitalPin(r,echo)
while readDigitalPin(r,echo)==0
   break
end   
tic  
  while  readDigitalPin(r,echo)==1
      pause(0.5);
     continue 
  end
pulseDuration=toc; 
display(pulseDuration)  
distance=pulseDuration*17150; 
distance=round(distance,2)
pause(1)
 
  display(distance)
if  distance<=40  
    writeDigitalPin(r,26,1)
   
end
end