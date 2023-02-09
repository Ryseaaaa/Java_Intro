//Input Variables
float lengte = 1.58;
float gewicht = 52;
int leeftijd = 15;

float bmi = 0;
int bmiStatus = 1;
String message = "";
int colorR = 0;
int colorG = 0;
int colorB = 0;

//BMI calculation
  bmi = gewicht/(lengte*lengte);
  //println(bmi);
  
//status assign
  if( leeftijd < 19){
  bmiStatus = 0;
  }
  //age 19-69
  else if(leeftijd < 70){
    if(bmi < 18.5){
      bmiStatus = 2;
    }else if(bmi < 25){
      bmiStatus = 3;
    }else if(bmi < 30){
      bmiStatus = 4;
    }else{
      bmiStatus = 5;
    }
  //age 70+
  }else {
    if(bmi < 22){
      bmiStatus = 2;
    }else if(bmi < 28){
      bmiStatus = 3;
    }else if(bmi < 30){
      bmiStatus = 4;
    }else{
      bmiStatus = 5;
    }
  }
  
  

  
//message assign
if(bmiStatus == 0){
  message = "U bent 18 of jonger, hier is geen data over.";
  colorR = 127;
  colorG = 127;
  colorB = 127;
}else if(bmiStatus == 1){
  message = "U heeft ernstig ondergewicht.";
  colorR = 191;
  colorG = 31;
  colorB = 31;
}else if(bmiStatus == 2){
  message = "U heeft ondergewicht.";
  colorR = 159;
  colorG = 159;
  colorB = 63;
}else if(bmiStatus == 3){
  message = "U heeft een gezond gewicht.";
  colorR = 31;
  colorG = 191;
  colorB = 31;
}else if(bmiStatus == 4){
  message = "U heeft overgewicht.";
  colorR = 191;
  colorG = 159;
  colorB = 63;
}else if(bmiStatus == 5){
  message = "U heeft extreem overgewicht.";
  colorR = 191;
  colorG = 31;
  colorB = 31;
}

//draw scene
size(1024,512);
background(colorR,colorG,colorB);
textSize(32);
text(message,32,64);
textSize(24);
noFill();
strokeWeight(8);
stroke(colorR/2,colorG/2,colorB/2);

line(0,96,1024,96);
line(0,210,1024,210);

strokeWeight(4);
line(0,170,1024,170);
line(0,136,1024,136);
line(0,270,1024,270);


text("Leeftijd: "+leeftijd,32,128);
text("Gewicht: "+gewicht,32,160);
text("Lengte: "+lengte,32,192);
text("BMI: "+round(bmi*10)*0.1,32,256);
  
  
