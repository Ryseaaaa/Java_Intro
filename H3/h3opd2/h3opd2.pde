//opdracht begint op regel 24

float frame = 1;
float value = 1;

void setup() {
  size(512,512);
  frameRate(144);
}

void draw() {
  frame++;
  
  value = ((sin(frame/144)+1)*64); //oscillating between 0 & 128
  println(value);
  

  //random stuff
  background(0,(128-value),value);
  fill(value,0,0);
  stroke(255-value,255-value,255-value);
   strokeWeight(2+(value/32));
  ellipse(255,255,value,value);
  
  //de opdracht
  stroke(0,0,0);
  strokeWeight(8);
  
  //topleft
  fill(200,100,50);
  rect(64,64,128,128);
  
  
  //topright
  fill(100,200,50);
  rect(320,64,128,128);
  
  //bottomleft
  fill(50,100,200);
  rect(64,320,128,128);
  
  //bottomright
  fill(200,200,50);
  rect(320,320,128,128);
  
  //line
  noFill();
  rect(64,64,384,384);
}
