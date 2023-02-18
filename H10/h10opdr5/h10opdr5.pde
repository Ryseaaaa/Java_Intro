import controlP5.*;
ControlP5 ui;


Textfield inputText1;
Textfield inputText2;

float inputValue1;
float inputValue2;
float output;

Button multiply;
Button divide;
Button add;
Button subtract;

PFont sans;


void setup(){
  ui = new ControlP5(this);
  sans = createFont("comic.ttf",24);
  
  size(512,256);
  frameRate(30);
  
  fill(135, 0, 88);
  
  
  
  //buttons
  
  multiply = ui.addButton("multiply")
             .setPosition(width/8*2,height/8*5)
             .setSize(64,64)
             .setCaptionLabel("*")
             .setColorBackground(color(205, 81, 98))
             .setColorForeground(color(164, 48, 63))
             .setColorLabel(color(255, 236, 204))
             .setFont(sans)
             .setColorActive(color(135, 54, 65));
                 
  divide =   ui.addButton("divide")
             .setPosition(width/8*3,height/8*5)
             .setSize(64,64)
             .setCaptionLabel("/")
             .setColorBackground(color(205, 81, 98))
             .setColorForeground(color(164, 48, 63))
             .setColorLabel(color(255, 236, 204))
             .setFont(sans)
             .setColorActive(color(135, 54, 65));
  
  add        = ui.addButton("add")
             .setPosition(width/8*4,height/8*5)
             .setSize(64,64)
             .setCaptionLabel("+")
             .setColorBackground(color(205, 81, 98))
             .setColorForeground(color(164, 48, 63))
             .setColorLabel(color(255, 236, 204))
             .setFont(sans)
             .setColorActive(color(135, 54, 65));
                 
  subtract   = ui.addButton("subtract")
             .setPosition(width/8*5,height/8*5)
             .setSize(64,64)
             .setCaptionLabel("-")
             .setColorBackground(color(205, 81, 98))
             .setColorForeground(color(164, 48, 63))
             .setColorLabel(color(255, 236, 204))
             .setFont(sans)
             .setColorActive(color(135, 54, 65));
             
  //textfields
  inputText1 = ui.addTextfield("inputText1")
             .setPosition(width/4,height/4)
             .setSize(width / 4, height/4)
             .setColor(color(255, 236, 204))
             .setColorBackground(color(135, 0, 88))
             .setColorForeground(color(205, 81, 98))
             .setColorActive(color(135, 54, 65))
             .setFont(sans)
             .setCaptionLabel("");
             
  inputText2 = ui.addTextfield("inputText2")
             .setPosition(width/2,height/4)
             .setSize(width / 4, height/4)
             .setColor(color(255, 236, 204))
             .setColorBackground(color(135, 0, 88))
             .setColorForeground(color(205, 81, 98))
             .setColorActive(color(135, 54, 65))
             .setFont(sans)
             .setCaptionLabel("");
             
  updateScene();
}

void draw(){
  updateScene();
}

//Update Scene
void updateScene(){

  
  inputValue1 = float (inputText1.getText());
  inputValue2 = float (inputText2.getText());
  
  println(output);
  
  background(200, 214, 175);
  textSize(32);
  text(output,width/4*3,height/2);
}

//Button Functions
void multiply(){
  output = inputValue1*inputValue2;
}

void divide(){
  output = inputValue1/inputValue2;
}

void add(){
  output = inputValue1+inputValue2;
}

void subtract(){
  output = inputValue1-inputValue2;
}
