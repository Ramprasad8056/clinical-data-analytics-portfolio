options obs=100;

/* Sample shoe-sales data shaped like SASHELP.SHOES so the original
   DATA step (netsales = Sales - Return) runs unmodified against it.
   Column names match the variables the script references. */
data work.shoes_src;
    length Region $ 25 Product $ 14 Subsidiary $ 12;
    input Region $ Product $ Subsidiary $ Stores Sales Inventory Return;
    datalines;
Africa Boot Addis 12 29761 191821 769
Africa Men's_Casual Addis 4 67242 118036 2284
Africa Men's_Dress Addis 7 76793 136273 2433
Africa Sandal Addis 10 62819 204284 1861
Africa Slipper Addis 14 68641 279795 1771
Asia Boot Bangkok 8 1996 17847 18
Asia Men's_Casual Bangkok 3 90526 268119 3098
Asia Men's_Dress Bangkok 2 86766 18030 2262
Asia Sandal Bangkok 4 22250 24145 595
Canada Boot Calgary 2 4846 6336 90
Canada Men's_Casual Calgary 5 38963 134730 1280
Canada Sandal Calgary 3 16662 11424 318
Canada Slipper Calgary 9 64891 169691 1845
;
run;
