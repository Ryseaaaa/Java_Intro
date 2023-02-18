int secondTotal, secondCount, minuteCount, hourCount;
float secondRad, minuteRad, hourRad;

void setup(){
  size(256,256);
  frameRate(1);
  
  secondTotal = 0;
  fill(0);
}

void draw(){
  //secondTotal++;
  
  //secondCount = secondTotal%60;
  //minuteCount = floor(secondTotal/60)%60;
  //hourCount = floor(secondTotal/3600)%24;
  
  secondCount = second();
  minuteCount = minute();
  hourCount = hour();

  
  secondRad = 2*PI/60*float(secondCount);
  minuteRad = 2*PI/60*float(minuteCount);
  hourRad = 2*PI/24*float(hourCount);
  
  //draw scene
    background(255,255,255);
    translate(width/2,height/2);
     
    //second

    rotate(secondRad);
    
    stroke(191,63,63);
    strokeWeight(2);
    line(0,0,0,-height/8*3);
  
    rotate(-secondRad);
  
    //minute
    rotate(minuteRad);
    stroke(31,31,31);
    strokeWeight(2);
    line(0,0,0,-height/3);
  
    rotate(-minuteRad);
    
    //hour
    rotate(hourRad);
    stroke(31,31,31);
    noStroke();
    rect(-3,0,6,-height/6-2);
    triangle(-6,-height/6,6,-height/6,0,-height/6-8);
  
    rotate(-hourRad);
    
    println(hourCount + " " + minuteCount + " " + secondCount);
}
