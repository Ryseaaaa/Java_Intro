int cijfer = round(random(1,10));
String cijferText = "";
//println(cijfer);

switch(cijfer){
  case 1:
  case 2:
  case 3:
    cijferText = "slecht";
    break;
  case 4:
    cijferText = "onvoldoende";
    break;
  case 5:
    cijferText = "matig";
    break;
  case 6:
  case 7:
    cijferText = "voldoende";
    break;
  case 8:
  case 9:
  case 10:
    cijferText = "goed";
    break;
}
println("Je hebt een " + cijfer + ". Dit is " + cijferText + ".");
