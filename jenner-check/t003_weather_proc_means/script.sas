title "Weather Statistics by Year and Park";

proc means data=work.np_westweather
           mean min max
           maxdec=2;
    class Year Name;
    var Precip Snow TempMin TempMax;
run;

title;
