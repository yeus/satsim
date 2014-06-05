#include "rosmo.h"

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

using namespace std;

int main(int argc, char **argv)
{
  InitRos();
  
  ros::Rate loop_rate(10);  
  while (ros::ok())
  {
    Send_Message();

    ros::spinOnce();

    loop_rate.sleep();
  }
  
  return 0;
}