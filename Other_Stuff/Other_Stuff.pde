int sizex = 512;
int sizey = 512;
int a = 9;

size(512,512);
float y =  0;
float y2 = 0;
int x2 = 0;

for(int x = 0; x < 512; x++){
  x2 = x+1;
  
  y = 10*sqrt(x);
  y2 = 10*sqrt(x2);
  line(x,sizey-y,x2,sizey-y2);
  
}
