Introduction
============

This folder holds a collection of python-scripts 
for use with the iboss catalogue for buildingblocks.

The scripts can load XML-description files and databases
as well as provide some analysis functions and a synchronization
mechanism between XML and ODT file formats.

Installation
============

required python packages:

- python-quantities
- numpy/scipy


todo
====

- debugging rendersat 


Release information:
====================
  
Version 0.1:
''''''''''''

description of scripts:

- odt handling:

  - iboss_odt_load.py
    - loads iboss database from odt-file
    
  - odspy.py
    - loads odt tables into python numpy arrays
    
- xml handling:

  - iboss_xml_save.py
    - saves iboss database in xml format
    
  - iboss_xml_load.py
    - loads iboss xml-database
    
- python scripts:

  - iboss_catalogue.py
    - holds python data structure definition 
    
  - rendersat.py
    - renders a satellite configuration in blender
