#include "rosmoc.h"
#include <stdlib.h>
#include <time.h>

double ExternalFunc1_ext(double x)
{
  double res;
  res = x+2.0*x*x;
  return res;
}