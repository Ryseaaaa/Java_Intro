int colorR = 0;
int colorG = 0;
int colorB = 0;

void setup(){
  fullScreen();
  frameRate(30);
  colorMode(RGB,100,100,100,100);
  noStroke();
  background(colorR,colorG,colorB);
}

void draw(){
  fill(colorR,colorG,colorB,3);
  //rect(0,0,displayWidth,displayHeight);
  randomBlue();
}

void drawcircle(int x, int y,float radius){
  fill(random(5,15),random(15,30),random(30,70));
  ellipse(x,y,radius,radius);
}

void randomBlue(){
  drawcircle(round(random(0,displayWidth)),round(random(1,displayHeight)),random(10,20));
}
