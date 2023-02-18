int cijfer1 = round(random(1,10));
int cijfer2 = round(random(1,10));


void setup(){
  size(500,500);  
  println(cijfer1);
  println(cijfer2);
  method();
}

void draw(){
  background(255,255,255);

}

void method(){
  float average = (cijfer1 + cijfer2) * 0.5;
  println(average);
}
