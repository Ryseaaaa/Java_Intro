int fib = 0;
int fibOld = 1;
int fibOld2 = 0;


while(fib < 100000){
  fibOld2 = fibOld;
  fibOld = fib;
  fib = fibOld2 + fibOld;
  println(fib);
}
