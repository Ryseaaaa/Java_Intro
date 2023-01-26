// I M   W A T C H I N G   Y O U

float rng1;
float rng2;
float rng3;
float rng4;
int timer = 30;

void setup(){
size(512,512);
frameRate(2);

}

void draw(){
timer--;
  
  
if(timer<=10) {
background(0);

noStroke();
fill(220,180,175);
arc(256,256,128,128,(0),(PI));

fill(128,16,16);
ellipse(256,288,64,48);

fill(0);
ellipse(256,288,24,32);
  if(timer==0) {
  timer = 30;}
}

else{
rng1 = random(-1,1);
rng2 = random(-1,1);
rng3 = random(-2,2);
rng4 = random(-2,2);


background(0);

noStroke();
fill(220,210,200);
arc(256,256,128,128,(0),(PI));

fill(32,32,192);
ellipse(256+(rng1*7*1.5),288+(rng2*7),64,48);

fill(0);
ellipse(256+(rng1*15*1.5),288+(rng2*15),32,32);

fill(255,255,255);
arc(224+(rng1*1.5),280+(rng2*5),16,16,0.75*PI,1.25*PI);

}

}
