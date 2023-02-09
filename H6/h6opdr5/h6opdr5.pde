boolean questGetSword = false;
boolean questLeaveVillage = false;
boolean questDungeon1 = false;
boolean questDungeon2 = false;
boolean questFinalBoss = false;

boolean dungeonDecider = (random(0,1) >= 0.5);
  //println(dungeonDecider);

//Sword Quest
questGetSword = true;
println("You got the sword! Quest complete.");

//Leave Village Quest
if(questGetSword){
  questLeaveVillage = true; 
  println("You left the village. Quest complete.");
}

//Defeat Dungeon Quest
if(dungeonDecider){
  questDungeon1 = true;
  println("You cleared the fire dungeon! Quest complete.");
}else{
  questDungeon2 = true;
  println("You cleared the water dungeon! Quest complete.");
}

//Final Boss
if(questDungeon1 || questDungeon2){
  questFinalBoss = true;
  println("Final Boss Defeated! Quest complete. The world has been saved.");
}
