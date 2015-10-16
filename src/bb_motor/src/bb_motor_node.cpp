#include <ros/ros.h>
#include "std_msgs/String.h"

ros::Publisher cmd_ard_pub_;


void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());

  cmd_ard_pub_.publish(msg);  
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "bb_motor");
  ros::NodeHandle n;  
  cmd_ard_pub_ = n.advertise<std_msgs::String>("cmd_ard_", 10);
  ros::Subscriber sub = n.subscribe("cmd", 10, chatterCallback);
  ros::spin();


  return 0;
}
