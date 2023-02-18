//inefficient code go brrr

float noiseScale = 0.04;
int frame = 0;

void setup(){
  fullScreen();
  frameRate(5);
}

void draw(){
  background(0);
  for(int x = 0; x < displayWidth; x++){
    for(int y = 0; y < displayHeight; y++){
      float perlinColor = noise(x*noiseScale,y*noiseScale,frame*noiseScale)*255;
      stroke(perlinColor,0,255-perlinColor);
      point(x,y);
    }
  }
  frame++;
}
