String[] namen = {"Piet", "Jan", "Klaas", "Kees", "Rob"};
boolean found = false;

for(int i = 0; i <5; i++){
  if(namen[i] == "Jan"){
    found = true;
  }
}

println(found);
