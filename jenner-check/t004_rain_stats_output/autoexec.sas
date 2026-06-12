options obs=100;

/* Sample western-park precipitation shaped like PG1.NP_WESTWEATHER, just
   the columns this step reads. Several rainy and dry days per Name x Year
   so the author's WHERE Precip ne 0 filter, CLASS Name Year, WAYS 2 and
   OUTPUT (n=, sum=) all produce a meaningful summary table. */
data work.np_westweather;
    length Name $ 18;
    input Name $ Year Precip;
    datalines;
Yellowstone 2015 0.50
Yellowstone 2015 0.00
Yellowstone 2015 0.30
Yellowstone 2015 0.20
Yellowstone 2016 0.80
Yellowstone 2016 0.00
Yellowstone 2016 0.10
Zion 2015 0.10
Zion 2015 0.00
Zion 2016 0.30
Zion 2016 0.20
Zion 2016 0.00
;
run;
