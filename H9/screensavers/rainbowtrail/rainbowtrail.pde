float xpos = 128;
float ypos = 128;
float xdirection = 1;
float ydirection = 1;
int hue = 1;
int xsize = 1920;
int ysize = 1080;



void setup(){
  fullScreen();
  frameRate(144);
  
}

void draw(){
  fill(255,255,255,0);
  rect(0,0,xsize,ysize);
  
  //direction flip X
  if(xpos > xsize){
    xdirection = -1;
  }else if(xpos < 0){
    xdirection = 1;
  }
  //direction flip X
  if(ypos > ysize){
    ydirection = -1;
  }else if(ypos < 0){
    ydirection = 1;
  }
  
  xpos = xpos + 3*xdirection;
  ypos = ypos + 4*ydirection;
  
  colorMode(HSB,360,255,255);
  hue = (hue+1)%360; 
  //hue = round(random(1,360));
  fill(hue,255,255);
  ellipse(xpos,ypos,32,32);
  colorMode(RGB,255,255,255);  
  
}
