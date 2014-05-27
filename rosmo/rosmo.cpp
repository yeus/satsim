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

using namespace std;

// *****************************************************************************
// *****************************************************************************
// *****************************************************************************

void writetofile(double x1, double x2)
{
  ofstream  myfile;
  myfile.open("test.dat", ios::app);
  
  myfile << x1 << " " << x2 << endl;
  
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