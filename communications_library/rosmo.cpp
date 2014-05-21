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

using namespace std;

// *****************************************************************************
// *****************************************************************************
// *****************************************************************************

/* file: ExternalFunc1.c */
double ExternalFunc1_ext(double x)
{
  double res;
  res = x+2.0*x*x;
  return res;
}

/* file: ExternalFunc2.c */
double ExternalFunc2(double x)
{
  double res;
  res = (x-1.0)*(x+2.0);
  return res;
}

void test() { 
  cout << "testblabla";
}