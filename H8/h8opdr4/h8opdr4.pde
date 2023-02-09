size(512,512);
background(#ffffff);
fill(#000000);

//spacing
int posX = 32;
int posY = 32;
//scaling
int scaleX = 24;
int scaleY = 24;
//row count
int rowsX = 5;
int rowsY = 2;


for(int i = 1; i <= rowsX; i++){
    posY = 32*i;
    for(int j = 1; j <= rowsY; j++){
        posX = 32*j;
        rect(posX,posY,scaleX,scaleY);
    }
}
