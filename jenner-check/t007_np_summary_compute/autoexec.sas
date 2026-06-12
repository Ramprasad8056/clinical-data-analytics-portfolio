options obs=100;

/* Sample park-summary table shaped like PG1.NP_SUMMARY, carrying the
   columns the author's DATA step reads: Reg, ParkName, DayVisits,
   OtherLodging, Acres, and the four camping counts the SUM() collapses.
   The bundled data lets the author's KEEP, computed SqMiles, summed
   Camping and FORMAT statements all run unmodified. */
data work.np_summary;
    length Reg $ 4 ParkName $ 22;
    input Reg $ ParkName $ DayVisits OtherLodging Acres
          OtherCamping TentCampers RVCampers BackcountryCampers;
    datalines;
IM Yellowstone 806035 24197 2219791 1200 3400 2100 540
PW Yosemite 1234567 18900 761748 980 5600 1800 760
IM GrandCanyon 999888 31200 1201647 450 2900 1600 300
SE Everglades 320500 4100 1508538 220 1500 600 180
AK Denali 210000 2200 4740912 90 800 120 410
;
run;
