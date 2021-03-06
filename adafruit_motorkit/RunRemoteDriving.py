
import time # Import the Time library
import getch
from adafruit_motorkit import MotorKit

kit = MotorKit()

# Calibration
GxRightMotorForward = 1.0
GxLeftMotorForward = 1.0

# Switch both motors on - go backwards
def Backwards():
    kit.motor1.throttle = -GxRightMotorForward
    kit.motor2.throttle = -GxLeftMotorForward

# Switch both motors on - go forwards
def Forwards():
    kit.motor1.throttle = GxRightMotorForward
    kit.motor2.throttle = GxLeftMotorForward

# Switch both motors off - stop
def Stop():
    kit.motor1.throttle = 0
    kit.motor2.throttle = 0

# Switch the right motor on - go left
def TurningLeft():
    kit.motor1.throttle = GxLeftMotorForward
    kit.motor2.throttle = -GxRightMotorForward

# Switch the left motor off = go right
def TurningRight():
    kit.motor1.throttle = -GxLeftMotorForward
    kit.motor2.throttle = GxRightMotorForward

# Your code to control the robot goes below this line
try:

    #repeat the next indented block forever
    while True:
        key_input = getch.getche()
        if key_input == 'w':
          Forwards()
          print('Going Forward')
        if key_input == 'e':
          Stop()
          print('Stop')
        if key_input == 'd':
          TurningRight()
          print('Going Right')
        if key_input == 'a':
          TurningLeft()
          print('Going Left')
        if key_input == 's':
          Backwards()
          print('Going Backward')

# If you press CTRL+C, cleanup and stop
except KeyboardInterrupt:
    print('Exit')
