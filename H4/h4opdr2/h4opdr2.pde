int hpMax = (1000);
int dmgBase = (10);
float dmgWeaponMult = (1.0);

float hp = 0;
float dmg = 0;
float hpPercent = 0;

int survival = 0;

void setup(){
frameRate(.5);

hp = hpMax;
dmg = dmgBase * dmgWeaponMult;
hpPercent = (hp/hpMax)*100;

}


void draw(){
  
  //death
  if(hp <= 0) {
    println("you died lol noob");
    print("you survived "); print(survival); println(" rounds");
    
    frameRate(0);
    
    //hp = 1000;
    //dmg = 10;
    //survival = 0;
  }
    
  //alive
  else{
    //damage calculator
    dmgWeaponMult = random(0.9,1.2);
    dmg = dmg * dmgWeaponMult;
    
    //damage text
      print("The enemy dealt "); print(dmg); println(" dmg!") ;
    
    //subtract hp
    hp = hp-dmg; 
    
    //hp remaining
    hpPercent = (hp/hpMax)*100;
      print("You have "); print(hpPercent); println("% HP remaining.");
    
    //survival counter
    if(hp >= 0){
    survival++;
    }
  }
  
}
