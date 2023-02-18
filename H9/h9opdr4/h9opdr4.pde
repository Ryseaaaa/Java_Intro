void setup(){
  size(512,512);
  background(#ffffff);
  drawsquare(128,128,256,8); //position x, position y, size, line thickness
}

void drawsquare(int posx,int posy,int size,int thick){
  strokeWeight(thick);
  //line1
  line(posx,posy,posx+size,posy);
  //line2
  line(posx,posy,posx,posy+size);
  //line3
  line(posx,posy+size,posx+size,posy+size);
  //line4
  line(posx+size,posy,posx+size,posy+size);
}
