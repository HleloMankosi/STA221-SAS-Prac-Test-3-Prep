*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA TABLE;
INPUT A B COUNT;   
DATALINES;
0 0 12
0 1 15
1 0 18 
1 1 3
;
RUN;

ODS TRACE ON;
PROC FREQ DATA = TABLE;
   WEIGHT COUNT;
   TABLES A*B /CHISQ;
   TITLE 'CHI-SQUARE ANALYSIS FOR A 2X2 TABLE';
RUN;
ODS TRACE OFF;


ODS HTML file = "/home/n32675700/my_content/mvalentine0/Chapter15 - Controlling ouptut using ODS/example5.html";
ODS HTML SELECT CrossTabFreqs;
PROC FREQ DATA = TABLE;
   WEIGHT COUNT;
   TABLES A*B /CHISQ;
   TITLE 'CHI-SQUARE ANALYSIS FOR A 2X2 TABLE';
RUN;
ODS HTML CLOSE;


