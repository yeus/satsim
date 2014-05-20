Introduction
============

This folder holds a collection of python-scripts 
for use with the iboss catalogue for buildingblocks.

The scripts can load XML-description files and databases
as well as provide some analysis functions and a synchronization
mechanism between XML and ODT file formats.


The main script is the "cmd_catalog.py"::
  
  usage: cmd_catalog.py [-h] [-csvs FILE | -csvl FILE | -save VERSION]
                        [-prop PROPERTIES [PROPERTIES ...]] [-c {co,bb,sat}]
                        [-w] [-p] [-t] [-s]

  Program to start operations on the iboss catalog and generate reports

  optional arguments:
    -h, --help            show this help message and exit
    -csvs FILE            save properties in a table as csv-file
    -csvl FILE            load properties from a table in csv-file and update
                          the catalog with it
    -save VERSION         save catalog in a new catalog with the provided
                          version string
    -prop PROPERTIES [PROPERTIES ...], --properties PROPERTIES [PROPERTIES ...]
                          list of properties for csv file
    -c {co,bb,sat}, --catalog {co,bb,sat}
                          which catalog to use
    -w, --write           write catalog report to a rst-file
    -p, --print           print content of catalog to commandline
    -t, --test            test catalog consistency
    -s, --shell           start catalog with ipython shell

  Example: python3 cmd_catalog.py -csvs table.csv -c co -prop mass Bemerkungen

csv-editing
-----------

If one wants to alter certain values within the catalog there is
an option to use csv-files for input.

The first step is to generate a csv-table from the relevant properties of the catalog:
This can be done for example by executing the cmd_catalog as follows::
  
  python3 cmd_catalog.py -csvs table.csv -c co -prop mass Bemerkungen

This command will produce a csv-Table with the properties "mass"  and "Bemerkungen" 
of the components catalog. more catalogs are "sat" for satellites and "bb" for buildingblocks.

You can now update the values you want in the table and read it back
in by using the command::
  
  python3 cmd_catalog.py -csvl table.csv -save new

This command will update the catalog with the data from table.csv and 
save it back into a catalog with the versionstring "new".
This catalog can be found at the following place::
  
  bausteinkatalog/catalog.new.xml
  bausteinkatalog/tub_sats/*.new.xml
  

Installation
============

#. on windows:
    go to this site:

    Python Distribution "WinPython" in der Version > 3.3.0 von  http://winpython.sourceforge.net/ herunterladen und installieren. Alle benötigten Pakete sind dann bereits dabei.

#. on linux:
  
    required python packages:
    
    - python3
    - numpy/scipy
    - pandas

todo
====

- GUI for data editing?
- include compiler into cmd_catalog
- debugging rendersat 
