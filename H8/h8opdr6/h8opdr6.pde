size(512,512);
background(#ffffff);
fill(#aaaaaa);
int radius = 0;

for(int i = 5; i >= 1; i--){
    radius = i*32;
    ellipse(256-radius/2,256,radius,radius);
    }
