int brickWidth = 32;
int brickHeight = 16;
int mortarThick = 8;
int[] brickColor = {200,100,50};
int[] mortarColor = {100,100,100};

int align = 0;

void setup(){
  noStroke();
  size(512,512);
  wall();
}

void draw(){

}

void wall(){
    for(int y = 1; y < height; y += brickHeight + mortarThick){
        for(int x = 1; x < width; x += brickWidth + mortarThick){
            fill(200,100,50);
            rect(x+align,y,x+brickWidth+align,y+brickHeight);
            fill(100,100,100);
            rect(x+align+brickWidth,y,x+align+brickWidth+mortarThick,y+brickHeight);
        }
        if(y%2 == 0){
          align = round((brickWidth+mortarThick)*0.5);
        }else{
          align = 0;
        }
        rect(y+brickHeight,0,y+brickHeight+mortarThick,width);
    }
}
