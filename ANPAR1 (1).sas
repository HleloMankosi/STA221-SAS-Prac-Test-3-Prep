*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

/* This example illustrates how to compare two independent groups
using Non-parametric Methods. 
In it, observations from two brands of fertilizer are compared to 
determine if one provides better overall growth (Measured by Height)
than the other. We have used this dataset in ATTEST2. */
/* A biologist experimenting with plant growth designs 
an experiment in which 15 seeds are randomly assigned to one of two fertilizers
and the height of the resulting plant is measured after two weeks.
She wants to know if one of the fertilizers provides more vertical growth than the other.*/

DATA FERTILIZER;
INPUT BRAND $ HEIGHT;
DATALINES;
   A   20.00
   A   23.00
   A   32.00
   A   24.00
   A   25.00
   A   28.00
   A   27.50
   B   25.00
   B   46.00
   B   56.00
   B   45.00
   B   46.00
   B   51.00
   B   34.00
   B   47.50
;
Run;

ODS HTML;
PROC NPAR1WAY data = fertilizer WILCOXON;
     CLASS BRAND;
     VAR HEIGHT;
	 EXACT;
     Title 'Compare two groups using NPAR1WAY';
RUN;
ODS HTML CLOSE;
