//Maak een methode die het gemiddelde van twee cijfers berekent en print deze
int number1 = 5;
int number2 = 3;
float average;

void setup(){
  methodAverage(number1,number2);
  println(average);
}

void draw(){

}

void methodAverage(float x,float y){
  average = (x+y)/2;
}

//Ik las de vraag verkeerd en deed eerst dit. Niet een gigantisch verschil maar wel fout. 
//Maak een methode die het gemiddelde van twee cijfers berekent en deze print
/*
  int number1 = 5;
  int number2 = 3;
  
  
  void setup(){
    methodAverage(number1,number2);
  }
  
  void draw(){
  
  }
  
  void methodAverage(float x,float y){
    float average;
    average = (x+y)/2;
    println(average);
  }
*/
