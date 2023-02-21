import controlP5.*;
ControlP5 ui;

int spaceCount = 0;
boolean inTest = true;
int timer = 1;
int seconds = 10;

Button startTimer;

void setup(){
  ui = new ControlP5(this);
  size(512,512);
  frameRate(60);
  
  textAlign(CENTER);
  textSize(32);
  fill(0);
  
  background(255, 228, 191);
  
  //button
  startTimer = ui.addButton("startTimer")
               .setPosition(224,224)
               .setSize(64,64)
               .setCaptionLabel("Start Timer");
}

void draw(){
  //test timer
  if(inTest){
    timer--;
  }
  
  //when timer reaches zero, end test
  if(timer == 0){
    inTest = false;
  }
  
  println(inTest);
  println(frameRate);
  updateScene();
  
}



void keyPressed(){
  if((keyCode == 32) && inTest){
    spaceCount++;
  }
}

void updateScene(){
  background(255, 228, 191);
  
  text(spaceCount,width/2,height/4);
  text(round(timer/frameRate),width/2,height/8*3);
}

  //Start test, reset timer and space count
void startTimer(){
  inTest = true;
  timer = round(frameRate)*seconds;
  spaceCount = 0;
}

//space = 32  `
