#!/usr/bin/env python
# license removed for brevity
import rospy
from basic.msg import sensordata
import random

#create a new publisher. we specify the topic name, then type of message then the queue size
pub = rospy.Publisher('sensor_topic', sensordata, queue_size=10)

#we need to initialize the node
rospy.init_node('sensor_publisher_node', anonymous=True)

#set the loop rate
rate = rospy.Rate(1) # 1hz
#keep publishing until a Ctrl-C is pressed
i = 0
while not rospy.is_shutdown():
    sensor = sensordata() #creating object for the message to access all datatype from sensordata.msg
    #we can put the data to sensor object by using dot operator 
    sensor.d = 1
    sensor.name="Temperature sensor one"
    sensor.temp = 21.02 + (random.random()*2)
    sensor.hum = 31.02+ (random.random()*2)
    rospy.loginfo("sensor data publish from publisher:")
 #after adding using dot operator to sensor object we pass object to rospy.loginfo(sensor)
    rospy.loginfo(sensor)
    pub.publish(sensor)
    rate.sleep()
    i=i+1

