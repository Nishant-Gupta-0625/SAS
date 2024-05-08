/* Assign some macro variables */

%let var1 = test;

%let id = 39;

/* Print to log */

%put var1 = &var1.;

%put id = &id.;

/* Use the macro variables in a data step to create a 1 record table */

data test;

       m&id. = 333;

       v = "&var1.";

run;