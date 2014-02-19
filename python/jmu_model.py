#!/home/tom/jm_python
# -*- coding: utf-8 -*-


# iboss-2
# filename: compiles a model into an fmu.py
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede

# Import the compiler function
from pymodelica import compile_fmu

# Specify Modelica model and model file (.mo or .mop)
model_name = 'modelicatests.efunc'
mo_file = '../model/modelicatests.efunc'

# Compile the model and save the return argument, which is the file name of the FMU
my_fmu = compile_fmu(model_name, mo_file)
