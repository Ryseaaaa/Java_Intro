float getal = 900000;
void setup(){
}

void draw(){
println(getal);
getal++;

println(getal);
getal--;
println(getal);

getal += 5;
println(getal); 

getal *= 2;
println(getal);

getal /= 5;
println(getal);

getal -=2;
println(getal);

  if(getal == 0){
  frameRate(0);
  }
}
