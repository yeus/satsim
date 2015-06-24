#include "rosmo.h"

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

using namespace std;

int main(int argc, char **argv)
{
  InitRos();
  //ros::Time::init();
  ros::Rate loop_rate(10);
  int counter = 0;
  while (ros::ok())
  {
    counter++;
    Send_Message();

    loop_rate.sleep();
  }
  
  return 0;
}