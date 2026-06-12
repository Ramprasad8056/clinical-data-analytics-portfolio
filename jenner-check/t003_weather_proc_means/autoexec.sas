options obs=100;

/* Sample western-park weather shaped like PG1.NP_WESTWEATHER: monthly
   observations of Precip, Snow, TempMin and TempMax by Year and Name.
   Multiple rows per Year x Name so the author's CLASS Year Name summary
   over four analysis variables does real work. */
data work.np_westweather;
    length Name $ 18;
    input Year Name $ Precip Snow TempMin TempMax;
    datalines;
2015 Yellowstone 0.50 2.0 20 78
2015 Yellowstone 0.00 0.0 25 82
2015 Yellowstone 0.30 1.0 22 80
2015 Zion 0.10 0.0 40 95
2015 Zion 0.00 0.0 44 99
2016 Yellowstone 0.80 5.0 18 70
2016 Yellowstone 0.20 1.5 21 74
2016 Zion 0.00 0.0 45 99
2016 Zion 0.30 0.0 42 92
2016 Zion 0.15 0.0 43 94
;
run;
