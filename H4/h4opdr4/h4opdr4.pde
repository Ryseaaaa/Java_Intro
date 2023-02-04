float getal = sqrt(2);
println(getal);

//round nearest int
getal = round(getal);
println(getal);

//round up
getal = sqrt(2);
getal = ceil(getal);
println(getal);

//round down
getal = sqrt(2);
getal = floor(getal);
println(getal);

////
//round decimal
////
println();
getal = 1000*sqrt(2);
println(getal);

//1 cijfer na komma
getal = 1000*sqrt(2);
  //getal = (round(getal*10))/10;
  //dit werkt niet?? round gebeurt als laatst ookal zit het tussen haakjes
getal *=10;
getal = (int) getal;
getal /=10;
println(getal);

//1 cijfer voor komma
getal = 1000*sqrt(2);
getal /=10;
getal = (int) getal;
getal *=10;
println(getal);

getal = Math.
