import os

#**********************************************************
#COE file creation
#This code snippet is used to create an initialization file
#for the BRAM module that is created.
#**********************************************************
fo = open("BRAMTest.coe","wb")
fo.write(";******************************************************************\n");
fo.write(";******** Example of Single Port Block Memory .COE file *********\n");
fo.write(";******************************************************************\n");
fo.write("; Sample memory initialization file for Single Port Block Memory, \n");
fo.write("; v3.0 or later. \n");
fo.write("; This .COE file specifies initialization values for a block \n");
fo.write("; memory of depth=*define this*, and width=16. In this case, values are \n");
fo.write("; specified in hexadecimal format. \n");
#Initialization radix can only be 2,4,8 and 16
fo.write("memory_initialization_radix=16;\n");
fo.write("memory_initialization_vector=\n");
 
#Insert iterative function of your choice to fill line after line the designated value
#with a comma and a newline in the end

for x in range(0,65536):
    fo.write(hex(x)[2:]+",\n")
fo.close;
 
#Remove last comma in file and replace it with a ";"
with open('BRAMTest.coe', 'rb+') as fo:
    fo.seek(-2, os.SEEK_END)
    fo.truncate()
    fo.write(";\n")
fo.close;
