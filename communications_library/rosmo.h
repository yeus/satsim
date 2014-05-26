/* iboss-2
// filename: test.h
//  author: - Thomas Meschede
// 
//  modified:
//        - 2014 02 27 - Thomas Meschede 
// testing interfacing c code with modelica
**/

#ifndef __ROSMOS_H__
#define __ROSMOS_H__

#ifdef __cplusplus
#define EXTERNC extern "C"
#else
#define EXTERNC
#endif

/*
//  typedef void* mylibrary_mytype_t;
// 
//  EXTERNC mylibrary_mytype_t mylibrary_mytype_init();
//  EXTERNC void mylibrary_mytype_destroy(mylibrary_mytype_t mytype);
//  EXTERNC void mylibrary_mytype_doit(mylibrary_mytype_t self, int param);
**/

/* Header file ExternalFunc1_ext.h for ExternalFunc1 function */
EXTERNC double ExternalFunc1_ext(double);
EXTERNC void writetofile(double, double);
/* Header file ExternalFunc2.h for ExternalFunc2 */
/* EXTERNC double ExternalFunc2(double);*/

#undef EXTERNC

#endif /* __ROSMOS_H__*/