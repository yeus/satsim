from pyfmi import load_fmu

import matplotlib.pyplot as plt

myModel = load_fmu('rosmo_ExternalLibraries.fmu')

#myModel.initialize()

res = myModel.simulate(final_time=150.0)