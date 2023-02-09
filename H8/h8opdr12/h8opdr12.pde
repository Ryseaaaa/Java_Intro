size(512,512);
background(#ffffff);

//spacing
int posX = 32;
int posY = 32;
//scaling
int scaleX = 32;
int scaleY = 32;
//row count
int rowsX = 10;
int rowsY = 10;




for(int i = 1; i <= rowsX; i++){
    
    posY = 32*i;
    for(int j = 1; j <= rowsY; j++){
        if((i+j) % 2 == 1){
        fill(#696969);
        }else{
        fill(#ababab);
        }
      
        posX = 32*j;
        rect(posX,posY,scaleX,scaleY);
        
        
    }
}
