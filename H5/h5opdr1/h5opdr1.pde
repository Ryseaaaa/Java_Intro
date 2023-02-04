String world  = "Hello, world!";
String space = " ";
String experiment = "Today I'm experimenting with string variables!";
String combination = "";
String sentence = "I have to add more but I'm out of creativity..";

println(combination);

combination = world+space+experiment;
println(combination);

println(combination + sentence);
println(sentence);

int repeat = 3;

while(repeat > 1) {
 combination = combination + " " + combination;
 repeat--;
}

println(combination);
//since int repeat doubles string combination length, high values can and will result in a memory error 

//opdracht 1.2

combination = world + space + experiment + space + sentence;
println(combination); 
