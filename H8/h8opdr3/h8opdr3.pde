size(512,512);
int posX = 0;
int posY = 0;

for(int i = 0; i <= 9; i++){
  posX += 16;
  posY += 8;
  line(64 + posX,64,64 + posX,128 + posY);
}
