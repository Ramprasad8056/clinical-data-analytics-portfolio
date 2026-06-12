data work.shoes;
set work.shoes_src;
netsales=sales-return;
run;

proc print data=work.shoes(obs=10);
    var Region Product Sales Return netsales;
run;
