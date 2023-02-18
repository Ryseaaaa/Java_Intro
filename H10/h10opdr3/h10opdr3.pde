import controlP5.*;
ControlP5 ui;

Textfield bedrag;
Button print;

float moneyCount;

//setup
void setup(){
  ui = new ControlP5(this);
  size(512,512);
  background(0);
  
  
  //textfields
  bedrag = ui.addTextfield("bedrag")
           .setPosition(160,192)
           .setCaptionLabel("Bedrag")
           .setColorLabel(color(64,192,64));
    
  //buttons
  
  print = ui.addButton("print")
          .setPosition(224,224)
          .setSize(64,64)
          .setCaptionLabel("boop");
}

//draw
void draw(){


}

void print(){
  moneyCount = float(bedrag.getText());
  println(1.21 * moneyCount);
}
