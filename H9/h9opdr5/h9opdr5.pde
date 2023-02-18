//oops i accidentally did 5

//Names
String name1 = "Astolfo";
String name2 = "Felix";
String name3 = "Hideyoshi";
String name4 = "Saika";
String name5 = "Chihiro";
//Foods
String food1 = "Sausage";
String food2 = "Peanut";
String food3 = "Cupcake";
String food4 = "Steak";
String food5 = "Apple";


void setup(){
  println(StringCombine(name1,name2,name3,name4,name5));
  println(StringCombine(food1,food2,food3,food4,food5));
}



String StringCombine(String s1, String s2, String s3, String s4, String s5){
  return(s1+", "+s2+", "+s3+", "+s4+", "+s5);
}
