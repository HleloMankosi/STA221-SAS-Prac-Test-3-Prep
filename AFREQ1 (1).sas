*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
ODS HTML file = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/example1.html";
PROC FREQ DATA = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/somedata.sas7bdat"; 
     TABLES GP;
TITLE 'Simple Example of PROC FREQ';
RUN;
ODS HTML CLOSE;

ODS RTF file = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/example2.rtf";
PROC FREQ DATA='/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/somedata.sas7bdat' ORDER=FREQ; 
     TABLES STATUS;
TITLE 'Example of PROC FREQ Using ORDER= Option';
RUN;
ODS RTF CLOSE;

ODS pdf file = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/example3.pdf";
PROC FREQ DATA='/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/somedata.sas7bdat' ORDER=FREQ; 
     TABLES STATUS;
TITLE 'Example of PROC FREQ Using ORDER= Option';
RUN;
ODS pdf CLOSE;

PROC TEMPLATE;
LIST STYLES;
RUN;

ODS HTML file = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/example4.html";
ODS HTML STYLE = MEADOW;
PROC FREQ DATA = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/somedata.sas7bdat";
TABLES GP;
RUN;
ODS HTML CLOSE;












