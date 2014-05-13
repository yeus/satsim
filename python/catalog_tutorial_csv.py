#!/usr/bin/python
# -*- coding: utf-8 -*-


# iboss-2
# filename: 
# author: - Thomas Meschede
#
# modified:
#	- 2012 10 25 - Thomas Meschede
#
# description: little tutorial to show how the catalog handles csv-files

import numpy as np
import iboss_catalogue
from iboss_catalogue import pq, loaddata
from iboss_catalogue import str2vec, rstheader

cat=iboss_catalogue.Catalog()
cat.loadxmldata()

#drei Kataloge:  cat.co, cat.bb, cat.sat
cat.save_csv("csv/tutorial_tmp.csv","co", ["mass","power_max", "Bemerkungen"])

data = cat.update_with_csv("csv/tutorial_table_update.csv")

#Put properties of a catalog in a csv table:
cat.save_csv("csv/tutorial_table1.csv","co", ["mass","power_max", "Bemerkungen"])

cat.save("new")

#print changes
#cat.load_csv("csv/tutorial_table2.csv", "bb")