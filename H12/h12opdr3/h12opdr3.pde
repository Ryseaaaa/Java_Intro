void setup(){
  background(0);
  size(512,512);
  noStroke();
  colorMode(RGB,255,255,255,255);
}

void draw(){
  fill(0,0,0,7);
  rect(0,0,width,height);
  

}

void mouseDragged(){
  float size = 0;
  fill(random(0,255),random(0,255),random(0,255));
  size = random(4,12);
  rect(mouseX-size,mouseY-size,size*2,size*2);

}
