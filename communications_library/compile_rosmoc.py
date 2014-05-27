#!/usr/bin/python
# -*- coding: utf-8 -*-

# Import the compiler function
from pymodelica import compile_fmu

#Specify Modelica model and model file (.mo or .mop)
model_name = 'rosmo.ExternalLibraries'
mo_file = 'rosmoc.mo'

# Compile the model and save the return argument, which is the file name of the FMU
my_fmu = compile_fmu(model_name, mo_file,
                     compiler_log_level = 'info') #'d'  for debug

