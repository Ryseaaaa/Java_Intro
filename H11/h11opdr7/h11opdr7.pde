import controlP5.*;
ControlP5 ui;

String[] inputs = new String[10];

Textfield textInput;
Button buttonInput;

int currentIndex = 0;

void setup(){
  ui = new ControlP5(this);
 
  size(512,512);
  background(0);
  textSize(32);
  
  //Button
  buttonInput =  ui.addButton("buttonInput")
                 .setPosition(width/2-32,height/4-32)
                 .setSize(64,64)
                 .setCaptionLabel("Enter String");
  
  //Textfield
  textInput =    ui.addTextfield("textInput")
                 .setPosition(width/2-64,height/8-16)
                 .setSize(128,32)
                 .setText("");
}

void draw(){
}

void buttonInput(){
  

  
  inputs[currentIndex] = textInput.getText();
  
  currentIndex++;
  
  if(currentIndex == 10){
    currentIndex = 0;
    updateDisplay();
  }
}

void updateDisplay(){
  
  background(0);
  fill(255,255,255);
  
  for(int i = 0; i < 10; i++){
    text(inputs[i],336,64+(32*i));
  }
}
