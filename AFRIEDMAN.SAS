*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
/*In this example; four drugs were given to five patients in random order.
In the crossover design. The observed value is a reaction to the drug,
where a larger value is beneficial.*/

DATA TIME;
INPUT SUBJ DRUG	OBS;
datalines;
1 1 31
1 2 29
1 3 17
1 4 35
2 1 15
2 2 17
2 3 11
2 4 23
3 1 25
3 2 21
3 3 19
3 4 31
4 1 35
4 2 35
4 3 21
4 4 45
5 1 27
5 2 27
5 3 15
5 4 31
;
Run;

ODS HTML;
Title "Friedman Analysis";
proc freq data = time;
  tables subj*drug*obs / cmh2 scores=rank noprint;
run;
ODS HTML CLOSE;

