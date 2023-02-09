String ageDescribe;

for(int i = 0; i < 100; i++){
  switch(i){
    case 0:
      ageDescribe = ("Welcome to life.");
      break;
    case 1:
      ageDescribe = ("First year on planet Earth.");
      break;
    case 2:
    case 3:
      ageDescribe = ("Baby go brrr.");
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8: 
    case 9:
    case 10:
    case 11:
    case 12:
      ageDescribe = ("Kids of this age are so annoying..");
      break;
    case 13:
    case 14:
      ageDescribe = ("Welcome to puberty.");
      break;
    case 15:
    case 16:
    case 17:
      ageDescribe = ("The days of joyful childhood are over.");
      break;
    case 18:
      ageDescribe = ("You're legally an adult now.");
      break;
      
    default:
      if(i>0){
      ageDescribe = "What a time to be alive!";
      }else{
      ageDescribe = "Consider being born first..";
      }
      break;
  }
  println(i + " years old: " + ageDescribe);
}
