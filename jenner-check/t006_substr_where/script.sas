data pacific;
	set work.storm_summary;
	drop Type Hem_EW Hem_NS MinPressure Lat Lon;
where substr(Basin,2,1)="P";
run;

proc print data=pacific;
run;
