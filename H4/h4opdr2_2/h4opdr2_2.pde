int frame = 0;
int value = 0;
int speed = 10;
int value2= 0;

//opdr3
int som1 = 0;
int som2 = 0;
int som3 = 0;
int som4 = 0;

int som1mod = 0;
int som2mod = 0;
int som3mod = 0;
int som4mod = 0;


void setup(){
size(64,64);
frameRate(10);

//opdr3
println("som1");
som1 = floor(random(10,50));
print(som1);
som1mod = floor(random(5,10));
print ("%"); print(som1mod); print("=");
println(som1%som1mod);

println("som2");
som2 = floor(random(10,50));
print(som2);
som2mod = floor(random(5,10));
print ("%"); print(som2mod); print("=");
println(som2%som2mod);

println("som3");
som3 = floor(random(10,50));
print(som3);
som3mod = floor(random(5,10));
print ("%"); print(som3mod); print("=");
println(som3%som3mod);

println("som4");
som4 = floor(random(100,500));
print(som4);
som4mod = floor(random(50,100));
print ("%"); print(som4mod); print("=");
println(som4%som4mod);
}

void draw(){
  
  frame++ ;
  
  value = (frame*speed)%255;
  value2 = (frame*speed*2)%255;
  
  background(value2,value,255-(value));
  
  //print(frame); print("   "); println(value);
  
}
  
