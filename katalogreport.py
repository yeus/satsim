from odspy import ods2table

import numpy as np

tables=ods2table('bausteinkatalog.ods')

#tables=np.array(tables)
bausteinetable=np.array(tables["Bausteine"])
komponententable=np.array(tables["Komponenten"])


#organisieren der Komponenten in dictionaries:
#komponenten={}
#for k in komponententable[1:]:
  

#Massenreport für jeden einzelnen Baustein:
#for bs in bausteine[3:]:
#  gewicht=0
#  for k in bs
  