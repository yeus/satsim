import zipfile
from lxml import etree

z = zipfile.ZipFile('bausteinkatalog.ods')

data = z.read('content.xml')
data = etree.XML(data)

etree.dump(data) 
