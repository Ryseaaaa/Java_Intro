size(512,512);
background(#ffffff);
int posX = 0;
int posY = 0;

for(int i = 1; i <=5; i++){
  posX = i*32;
  posY = i*32;
  rect(posX,posY,32,32);
}
