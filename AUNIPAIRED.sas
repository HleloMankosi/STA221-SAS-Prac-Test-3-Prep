*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

DATA WEIGHT;
INPUT WBEFORE WAFTER;
* Calculate WLOSS in the DATA step *;
WLOSS=WBEFORE-WAFTER;  
DATALINES;
200 190
175 154
188 176
198 193
197 198
310 240
245 204
202 178
;
Run;

ODS HTML;
PROC UNIVARIATE data = weight; 
	VAR WLOSS;
	TITLE 'Paired comparison using PROC UNIVARIATE';
RUN;
ODS HTML CLOSE;
