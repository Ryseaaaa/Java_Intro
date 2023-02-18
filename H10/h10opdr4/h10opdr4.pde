import controlP5.*;
ControlP5 ui;

Button buttonParents;
Button buttonStudents;

PFont sans;


int parentCount;
int studentCount;
int totalCount;


void setup(){
  ui = new ControlP5(this);
  
  frameRate(30);
  size(512,512);
  sans = createFont("comic.ttf",24);
  textFont(sans);
  textAlign(CENTER);
  fill(29, 54, 35);

  
  buttonParents = ui.addButton("buttonParents")
                 .setPosition(128,128)
                 .setSize(96,96)
                 .setCaptionLabel("Parent Count")
                 .setColorBackground(color(64, 105, 35))
                 .setColorForeground(color(29, 54, 35))
                 .setColorLabel(color(255,255,255))
                 .setColorActive(color(52, 110, 65));
  
  buttonStudents = ui.addButton("buttonStudents")
                 .setPosition(288,128)
                 .setSize(96,96)
                 .setCaptionLabel("Student Count")
                 .setColorBackground(color(64, 105, 35))
                 .setColorForeground(color(29, 54, 35))
                 .setColorLabel(color(255,255,255))
                 .setColorActive(color(52, 110, 65));
                 
                 
  updateScene();
}
void draw(){
}


void updateScene(){
  
  totalCount = (studentCount+parentCount);
  background(125, 171, 135);
  
  //text
  textSize(24);
  text(parentCount,176,256);
  text(studentCount,336,256);
  textSize(20);
  text("Total:",256,320);
  textSize(28);
  text(totalCount,256,384);
  
}
void buttonParents(){
  parentCount++;
  updateScene();
}


void buttonStudents(){
  studentCount++;
  updateScene();
}
