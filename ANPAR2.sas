*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
/*This example illustrates how to compare three or more independent
groups using Non-Paramteric methods. The data are weight gains
of twenty-eight animals that are randomly assigned to four feed treatments with seven animals
to a treatment type. Suppose you want to test whether there are differences among the effects of the different treatments. 
If you have reason to believe that the populations from which
these samples are taken are not normally distributed,
then the kruskal-wallis test would be approproiate.*/

DATA NPAR;
INPUT GROUP WEIGHT @@;
DATALINES;
1 50.8 1 57.0 1 44.6 1 51.7 1 48.2 1 51.3 1 49.0
2 68.7 2 67.7 2 66.3 2 69.8 2 66.9 2 65.2 2 62.0 
3 82.6 3 74.1 3 80.5 3 80.3 3 81.5 3 78.6 3 76.1
4 76.9 4 72.2 4 73.7 4 74.2 4 70.6 4 75.3 4 69.8
;
Run;

ODS HTML;
PROC NPAR1WAY data = npar WILCOXON;
     CLASS GROUP;
     VAR WEIGHT;
     Title 'Four group analysis using NPAR1WAY';
RUN;
ODS HTML CLOSE;


