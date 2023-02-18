import controlP5.*;

ControlP5 ui;

Button button1;

Textfield textfield1;





int frame = 0; 

void setup(){
  size(512,512);
  frameRate(10);

  
  ui = new ControlP5(this);
  
  button1 = ui.addButton("button1")
               .setPosition(192,192)
               .setSize(128,128)
               .setCaptionLabel("ENTER NAME");
            
  textfield1 = ui.addTextfield("textfield1")
               .setPosition(160,128)
               .setText("")
               .setCaptionLabel("NAME HERE")
               .setColorLabel(color(255,0,0));
}


void draw(){
  background(#ffffff);

}

void button1(){
  println("Hello, my name is " + textfield1.getText() + "!");
}
