options obs=100;

/* Sample national-park code-lookup table shaped like PG1.NP_CODELOOKUP:
   a park Type and the Region it belongs to. Type names carry embedded
   spaces exactly as the author's WHERE ... IN (...) list expects; the
   table is read with column input so those values stay intact. Enough
   variety across Type x Region for the crosstab and ORDER=FREQ. */
data work.np_codelookup;
    infile datalines truncover;
    input Type $ 1-24 Region $ 26-37;
    datalines;
National Park            IM
National Park            PW
National Park            SE
National Park            MW
National Monument        IM
National Monument        PW
National Monument        SE
National Historic Site   NE
National Historic Site   MW
National Historic Site   SE
National Preserve        AK
National Preserve        PW
National Seashore        SE
National Seashore        NE
Other Designation        IM
Other Park Type          PW
National Park            IM
National Monument        NE
National Historic Site   IM
National Park            SE
;
run;
