void setup(){
  size(512,512);
  background(#ffffff);
  noFill();
  circles(256,256,5,256,"mid","right");
}

void draw(){
}

void circles(int x, int y, int count, float size, String aligny, String alignx){
  for(int i = count; i >= 1; i--){
    //scale all so biggest circle is same size no matter circle count
    float scale = size*i/count;
    
    //determine alignment y
    float posy;
    switch(aligny){
      case "Top":
      case "top":
        posy = y+scale/2;
        break;
      case "Bottom":
      case "bottom":
        posy = y-scale/2;
        break;
      default:
        posy = y;
    }
    
    //determine alignment x
    float posx;
    switch(alignx){
      case "Left":
      case "left":
        posx = x+scale/2;
        break;
      case "Right":
      case "right":
        posx = x-scale/2;
        break;
      default:
        posx = x;
    }
    
    ellipse(posx,posy,scale,scale);
  }
}
