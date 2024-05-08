/* Sample SAS code */
data input_data;
    input id age gender $;
    datalines;
1 25 Male
2 30 Female
3 18 Male
4 22 Female
5 35 Male
;

data sample;
    set input_data;
    if age > 18 then status = 'Adult';
    else status = 'Child';
run;

proc sql;
    create table adult_female as
    select * 
    from sample
    where status = 'Adult' and gender = 'Female';
quit;
