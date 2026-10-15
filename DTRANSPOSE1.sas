*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
TITLE;
DATA SUBJECTS;                                                          
INPUT SUB1 $ SUB2 $ SUB3 $ SUB4 $;                                      
DATALINES;                                                              
12 21 13 14 
13 21 12 14 
15 31 23 23 
15 33 21 32 
 M  F  F  M 
;     
run;

ods html;
proc print data = subjects;
run;
ods html close;

ods html;                                                           
PROC TRANSPOSE DATA=SUBJECTS OUT=TRANSPOSED  prefix = x;                        
  VAR SUB1 SUB2 SUB3 SUB4;            
RUN;  
ods html close;
                                                                  
ODS HTML;                                                                        
PROC PRINT DATA=TRANSPOSED;
RUN;
ODS HTML CLOSE;
