#!/usr/bin/env python
import rospy
from basic.msg import sensordata
#in the function this argunment sensor_message_from_publisher store the data from publisher

def sensor_callback(sensor_message_from_publisher): 
#we can take the data from  sensor_message_from_publisher using dot operator
        rospy.loginfo(" sensor data received: ( id: %d, name: %s,  temp:%.2f ,hum:%.2f)", 
        sensor_message_from_publisher.d,sensor_message_from_publisher.name,
        sensor_message_from_publisher.temp,sensor_message_from_publisher.hum)
 
    
rospy.init_node('sensor_subscriber_node', anonymous=True)

rospy.Subscriber("sensor_topic", sensordata, sensor_callback) #here we using call back function to get a data
                                                              #from publisher

# spin() simply keeps python from exiting until this node is stopped
rospy.spin()
