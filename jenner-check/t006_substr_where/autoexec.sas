options obs=100;

/* Sample storm summary shaped like PG1.STORM_SUMMARY. Basin codes follow
   the SAS course convention (NA = North Atlantic, EP/WP = East/West
   Pacific, NI = North Indian, SP = South Pacific, etc.). A mix of basins
   whose second letter is and isn't "P" so the author's
   WHERE SUBSTR(Basin,2,1)="P" filter keeps the Pacific storms. */
data work.storm_summary;
    length Name $ 12 Basin $ 2 Type $ 2 Hem_EW $ 2 Hem_NS $ 1;
    input Name $ Basin $ Season Type $ MinPressure Lat Lon Hem_EW $ Hem_NS $;
    datalines;
Andrew NA 1992 TS 922 25 -80 W N
Iniki EP 1992 HU 938 16 -158 W N
Omar WP 1992 TY 920 13 145 E N
Gay NI 1992 CS 930 9 92 E N
Val SP 1992 CS 920 -14 -178 W S
Hugo NA 1989 HU 918 21 -65 W N
Keli SP 1997 CS 940 -10 -170 W S
Pam WP 2015 TY 896 -16 168 E S
Bob NA 1991 HU 950 33 -71 W N
Nina EP 1985 HU 902 13 -120 W N
;
run;
