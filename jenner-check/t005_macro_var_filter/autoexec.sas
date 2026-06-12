options obs=100;

/* Sample species list shaped like PG1.NP_SPECIES: Species_ID is prefixed
   with a park code (ZION-..., YELL-..., GRCA-...), plus Category,
   Scientific_Name, Common_Names, Abundance and Conservation_Status. Several
   Zion bird rows so the author's macro-driven WHERE
   (Species_ID like "&parkcode.%" and Category="&SpeciesCat.") returns rows.
   Fixed-column input keeps names with embedded spaces intact. */
data work.np_species;
    infile datalines truncover;
    input Species_ID $ 1-12 Category $ 14-21 Scientific_Name $ 23-46
          Common_Names $ 48-65 Abundance $ 67-76 Conservation_Status $ 78-93;
    datalines;
ZION-0001    Bird     Buteo jamaicensis        Red-tailed Hawk    Common     Least Concern
ZION-0002    Bird     Corvus corax             Common Raven       Abundant   Least Concern
ZION-0003    Bird     Aquila chrysaetos        Golden Eagle       Uncommon   Least Concern
ZION-0004    Mammal   Canis latrans            Coyote             Common     Least Concern
ZION-0005    Bird     Falco peregrinus         Peregrine Falcon   Rare       Endangered
YELL-0001    Bird     Cygnus buccinator        Trumpeter Swan     Rare       Special Concern
GRCA-0001    Bird     Gymnogyps californianus  California Condor  Rare       Endangered
;
run;
