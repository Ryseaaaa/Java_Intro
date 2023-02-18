import controlP5.*;

ControlP5 ui;

Button button1;
Button button2;
Button button3;





int frame = 0; 

void setup(){
  size(512,512);
  frameRate(10);

  
  ui = new ControlP5(this);
  
  button1 = ui.addButton("Hello")
            .setPosition(256,192)
            .setSize(128,128)
            .setCaptionLabel("Klik Mij");
            
  button2 = ui.addButton("hallO")
            .setPosition(128,192)
            .setSize(128,128)
            .setCaptionLabel("Klik Mij");
  
  button3 = ui.addButton("reset")
            .setPosition(128,64)
            .setSize(256,64)
            .setCaptionLabel("Reset")
            .hide();
}


void draw(){
  background(#ffffff);

}

void Hello(){
  button1.setCaptionLabel("WRONGGGG");
  button2.hide();
  button3.show();
  println("Helaas fout!");
}

void hallO(){
  button2.setCaptionLabel("Well done");
  button1.hide();
  button3.show();
  println("Goed gedaan!");
}

void reset(){
  button1.show().setCaptionLabel("Klik Mij");
  button2.show().setCaptionLabel("Klik Mij");
  button3.hide();
}
