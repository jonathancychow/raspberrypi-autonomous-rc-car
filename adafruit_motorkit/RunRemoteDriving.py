
import time # Import the Time library
import getch
from adafruit_motorkit import MotorKit

kit = MotorKit()

# Turn both motors forwards
def Forwards():
    kit.motor1.throttle = 1.0
    kit.motor2.throttle = -1.0
# Turn both motors backwards
def Stop():
    kit.motor1.throttle = 0
    kit.motor2.throttle = 0

# Your code to control the robot goes below this line
try:

    #repeat the next indented block forever
    while True:
        key_input = getch.getche()
        if key_input == 'w':
          Forwards()
          print('Going Forward')
        if key_input == 'd':
          Stop()
          print('Going Right')
# If you press CTRL+C, cleanup and stop
except KeyboardInterrupt:
    print('Exit')
