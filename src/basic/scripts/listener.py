#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def Talker_listener_callback(message): #message argunment store the data from publisher 
    #get_caller_id(): Get fully resolved name of local node
    rospy.loginfo("I get your datas %s", message.data)
#using dot operator we get the data from publisher and stored to the data variable   inside data varibale( publisher data)
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener_node', anonymous=True)

    rospy.Subscriber("Talker_listener_topic", String, Talker_listener_callback) # this call back function 

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
