proc print data=pg1.np_largeparks;
run;
proc sort data=pg1.np_largeparks out=park_clean nodupkey dupout=park_dups;
by _all_;
run;