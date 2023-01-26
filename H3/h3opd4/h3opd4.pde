size(512,512);
background(64,92,128);

stroke(0,0,0);
strokeWeight(4);



//pole
fill(64,64,64);
rect(240,256,32,256);

//base
fill(48,48,48);
  //rect(192,64,128,384);
  
  ellipse(256,128,160,160);
  ellipse(256,386,160,160);
  stroke(48,48,48);
  rect(176,128,160,256);
  stroke(0);
  line(176,128,176,386);
  line(336,128,336,386);


//panel
fill(64,64,64);
rect(208,128,96,256);

//red
fill(192,0,0);
ellipse(256,128,96,96);

//orange
fill(192,96,0);
ellipse(256,256,96,96);

//green
fill(0,192,0);
ellipse(256,384,96,96);
