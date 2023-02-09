size(512,512);
background(#ffffff);
noStroke();
fill(255,150,200);

//base body
  //red
    fill(144,32,16);
    ellipse(188,360,64,96);
    ellipse(512-188,360,64,96);
  
  
  //pink
    fill(255,150,200);
    //hands
    ellipse(128,192,64,128);
    ellipse(384,288,64,128);
    //body
    ellipse(256,256,256,256);

//face
  //eyes 1
    stroke(8);
    fill(8,12,64);
    ellipse(230,192,24,64);
    ellipse(512-230,192,24,64);
    noStroke();
  //eyes 2
    fill(#ffffff);
    ellipse(230,174,16,24);
    ellipse(512-230,174,16,24);
  //eyes 3
    fill(16,24,128);
    ellipse(230,210,16,16);
    ellipse(512-230,210,16,16);
  
  //mouth 1
    fill(96,48,48);
    ellipse(256,256,64,32);
  //mouth 2
    fill(160,60,60);
    ellipse(256,260,56,16);
    
  //cheeks
    fill(#F069AF);
    ellipse(192,232,16,16);
    ellipse(320,232,16,16);
