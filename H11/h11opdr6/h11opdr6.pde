int[] numbers = new int[10];
int count = 0;


for(int i = 0; i <10; i++){
  numbers[i] = round(random(0,5));
}

//check for value 5
for(int i = 0; i <10; i++){
  if(numbers[i] == 5){
    count++;
  }
}

println(numbers);
println(count);
