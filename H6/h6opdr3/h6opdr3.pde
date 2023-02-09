float cijfer = 0;
cijfer = (round(10*random(1,10)))*0.1;

String emote = "";
String state = "";

if(cijfer >= 5.5){
  state = ("voldoende");
  emote = "gelukkig";
}
else{
  state = "onvoldoende";
  emote = "helaas";
}

println("Ik heb een " + cijfer + " voor Java. Dit is " +emote+ " een " + state + ".");

//3.2
int speed = 35;

if(speed <= 100){
  println("Je rijdt te langzaam!");
}

else if(speed >= 130){
  println("Je rijdt te snel!");
}

else{
  println("Je rijdt binnen de limieten.");
}
