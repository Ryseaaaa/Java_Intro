void setup(){
  size(512,512);
  tree(128,256,128);
}

void tree(int x, int y, int size){
  fill(100,80,50);
  rect(x,y,32,128);
  fill(30,200,30);
  ellipse(x+16,y,size,size);
}
