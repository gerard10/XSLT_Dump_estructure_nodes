# XSLT_Dump_estructure_nodes  
XSLT files to dump all nodes of XML file using XSLT processor  
Similar what you get with xmlstarlet with thix commnad  
 xmlstarlet.exe el -v your_xml_file.xml   
  
  
but using a xslt   
like this:  
$ xsltproc.exe dump_xml_structure_path.xslt book_catalog_02.xml |head  
/catalog  
/catalog/cd[@id=1]  
/catalog/cd/title  
/catalog/cd/artist  
/catalog/cd/country  
/catalog/cd/company  
/catalog/cd/price  
/catalog/cd/year  
/catalog/cd[@id=2]  
/catalog/cd/title  
...  
  
    
    
    
From a xml file like this:  
    
<?xml version="1.0" encoding="UTF-8"?>  
<catalog>  
  <cd id='1'>  
    <title>Empire Burlesque</title>  
    <artist>Bob Dylan</artist>  
    <country>USA</country>  
    <company>Columbia</company>  
    <price>10.90</price>  
    <year>1985</year>  
  </cd>  
  <cd id='2'>  
    <title>Hide your heart</title>  
    <artist>Bonnie Tyler</artist>  
    <country>UK</country>  
    <company>CBS Records</company>  
    <price>9.90</price>  
    <year>1988</year>  
  </cd>  
  <cd>  
    <title>Greatest Hits</title>  
    <artist>Dolly Parton</artist>  
    <country>USA</country>  
    <company>RCA</company>  
    <price>9.90</price>  
    <year>1982</year>  
  </cd>  
</catalog>  
    
You get this:  
/catalog  
/catalog/cd[@id=1]  
/catalog/cd/title  
/catalog/cd/artist  
/catalog/cd/country  
/catalog/cd/company  
/catalog/cd/price  
/catalog/cd/year  
/catalog/cd[@id=2]  
/catalog/cd/title  
...  
    
/catalog/cd/year 
  
  
  
  
I make 4 xslt files.
dump_xml_structure_path.xslt   -- dump node like aboce  
dump_xml_structure_path_html.xslt  -- dumo like above into HTML  
dump_xml_structure_path_pipe_text.xslt -- dump like above and add a pipe and the value of the node at end of line  
dump_xml_structure_path_pipe_text_html.xslt -- dump like above and add a pipe and the value of the node at end of line into HTML version  
  
  
