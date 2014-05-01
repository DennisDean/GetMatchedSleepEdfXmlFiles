GetMatchedSleepEdfXmlFiles
==========================

Search a directory recursively to find sleep signal data files (EDF) and sleep annotatin files (XML) GetMatchedSleepFiles is a function for identifying EDF and annotation (XML) files often collected as part of a sleep study. The file list can be exported to an Excel file or returned as a cell array.

### Sleep Background:

Multiple signals for a single subject are stored in European Data Format (EDF) file. Technican scored sleep stages and sleep events are stored in XML format. The program searches a target directory for EDF and XML files.  

### Assumptions:
 
 The search function assumes the following naming the convention:

    EDF: 'SubjectNamingConvention'.EDF
    XML: 'SubjectNamingConvention'.EDF.xml

The search is not case sensitive and 'EDF' can not be a substring of 'SubjectNamingConvention'.

### Function Prototypes:

    GetMatchedSleepFiles (SourceFolder, ouputPathFn)
    matchedFileInfo = GetMatchedSleepFiles (SourceFolder, ouputPathFn);

### Input:

    SourceFolder:   Folder to search recursively for paired EDF and files
    OuputPathFn:   An EXCEL file name, which can include a path ('./resultFolder/fileList.xls')

### Output:  

----
     matchedFileInfo:   A cell array with a row for each matched EDF/XML file
                        pair.  The 11 columns correspond to: 

                       'ID', 
                       'EDF Name', 'EDF Date', 'EDF Bytes', 
                       'EDF Folder Date Num',  'EDF Folder'
                       'XML Name', 'XML Date', 'XML Bytes', 
                       'XML Folder Date Num',  'XML Folder'
----
