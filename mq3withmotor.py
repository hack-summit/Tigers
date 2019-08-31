import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)
INPUT=26
#a=input('How to move')
GPIO.setup(INPUT,GPIO.IN)
GPIO.setup(16,GPIO.OUT)
GPIO.setup(20,GPIO.OUT)
GPIO.setup(21,GPIO.OUT)
p=GPIO.PWM(16,100)
while True:
    p.start(20) 
    GPIO.output(21,True)
    GPIO.output(20,False)
    GPIO.output(16,True)
    time.sleep(3)
    if(GPIO.input(INPUT)!=0):
       p.ChangeDutyCycle(100)
    else:
       p.ChangeDutyCycle(40)
    GPIO.output(21,True)
    GPIO.output(20,False)
    GPIO.output(16,True)
    time.sleep(20)
    GPIO.output(16,False)
    p.stop()