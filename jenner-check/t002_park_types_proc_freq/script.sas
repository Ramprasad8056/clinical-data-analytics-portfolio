title "Selected Park Types by Region";

proc freq data=work.np_codelookup order=freq;
    where Type in ("National Park",
                   "National Monument",
                   "National Historic Site");
    tables Type*Region / nocol crosslist
                          plots=freqplot(
                              groupby=row
                              scale=percent
                              orient=horizontal
                          );
run;

title;
