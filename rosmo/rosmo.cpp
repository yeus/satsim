// iboss-2
// filename: test.c
//  author: - Thomas Meschede
// 
//  modified:
//        - 2014 02 27 - Thomas Meschede 
// testing interfacing c code with modelica

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <fstream>

#include "rosmo.h"

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

using namespace std;

// *****************************************************************************
// *****************************************************************************
// *****************************************************************************

class node
{
public:
  node(int argc, char *argv[]);  
  ~node();

  void Send_Message();
  
  ros::NodeHandle *n;
  ros::Publisher chatter_pub;
};

extern node* mynode;

node* mynode=NULL;

void InitRos(){
  char *argv[] = {const_cast<char *>("modelica_node")};
  int argc = sizeof(argv) / sizeof(char*) - 1;
  mynode = new node(1,argv);//argc, **argv
  writetofile("node initialized");
}

void Send_Message(){
  if (mynode == NULL)
  {
    InitRos();
  }

  static int count = 0;
  count++;
  std::string msg;

  if (mynode != NULL){
    std::stringstream ss;
    ss << "sent message # " << count;
    msg = ss.str();
    
    mynode->Send_Message();
  }else{
    std::stringstream ss;
    ss << "no node started! # " << count;
    msg = ss.str();
  }
  
  ros::spinOnce();
  writetofile(msg.c_str());
}

void writetofile(const char* str)
{
  //std::string data
  
  ofstream  myfile;
  myfile.open("test.dat", ios::app);
  
  myfile << str << endl;
  
  myfile.close();
}

/* file: ExternalFunc1.c */
double ExternalFunc1_ext(double x)
{
  double res;
  res = x+2.0*x*x;
  return res;
}

/* file: ExternalFunc2.c */
// double ExternalFunc2(double x)
// {
//   double res;
//   res = (x-1.0)*(x+2.0);
//   return res;
// }



node::node(int argc, char *argv[]){
    ros::init(argc, argv, "talker");
   
    n = new ros::NodeHandle();
    
    chatter_pub = n->advertise<std_msgs::String>("chatter", 1000);
  }
  
node::~node(){
  delete n;
  n = NULL;
}

void node::Send_Message(){
  static int count = 0;
  count++;
  std_msgs::String msg;

  std::stringstream ss;
  ss << "rosmo test msg " << count;
  msg.data = ss.str();

  ROS_INFO("%s", msg.data.c_str());

  chatter_pub.publish(msg);
}