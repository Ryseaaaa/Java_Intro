//colors
color snakeColor1 = color(50,200,50);
color snakeColor2 = color(50,100,100);
color bgColor = color(32,32,32);
color textColor = color(255);
color fruitColor = color(200,50,50);

//grid
int scale = 1;
int gridX = 16*scale;
int gridY = 9*scale;
float gridSize;

//snake storage
int snakeLength = 1;
int[] snakeX = new int[gridX*gridY];
int[] snakeY = new int[gridX*gridY];

//snake movement
String movDir = "RIGHT";
String lastMovDir = "";

//fruit
int fruitX;
int fruitY;

//highScore
int highScore = 0;


void setup(){
  fullScreen();
  background(bgColor);
  frameRate(5);
  textSize(32);
  textAlign(RIGHT);
  
  gridSize = width/gridX;
  
  //translate(gridSize,gridSize);
  
  //starting positions
  fruitX = 15;
  fruitY = 6;
  
  snakeX[0] = 1;
  snakeY[0] = 1;
}

void draw(){
  //move snake segments
  for(int i = snakeLength; i > 0; i--){
    snakeX[i] = snakeX[i-1];
    snakeY[i] = snakeY[i-1];
  }
  
  //move head
  switch(movDir){
    case "UP":
      snakeY[0]--;
      lastMovDir = "UP";
      break;
    case "DOWN":
      snakeY[0]++;
      lastMovDir = "DOWN";
      break;
    case "LEFT":
      snakeX[0]--;
      lastMovDir = "LEFT";
      break;
    case "RIGHT":
      snakeX[0]++;
      lastMovDir = "RIGHT";
      break;
  }
  
  //loop head
  if(snakeX[0] < 1){
    snakeX[0] = snakeX[0] + gridX;
  }
  if(snakeY[0] < 1){
    snakeY[0] = snakeY[0] + gridY;
  }
  if(snakeX[0] > gridX){
    snakeX[0] = snakeX[0] - gridX;
  }
  if(snakeY[0] > gridY){
    snakeY[0] = snakeY[0] - gridY;
  }
  
  //check head collision with segments
  for(int i = snakeLength; i > 1; i--){
    if( (snakeX[0] == snakeX[i]) && (snakeY[0] == snakeY[i]) ){
      endGame();
    }
  }
  
  
  //check for fruit
  if( (snakeX[0] == fruitX) && (snakeY[0] == fruitY) ){
    snakeLength++;
    while(fruitCollision()){
      fruitX = round(random(1,gridX-1));
      fruitY = round(random(1,gridY-1));
    }
  }
  
  //highScore
  highScore = max(snakeLength,highScore);
  
  //draw scene
  drawScene();
}
////////////////////////////////////////////////////////////////
void endGame(){
  snakeLength = 1;
  
}
////////////////////////////////////////////////////////////////
void drawScene(){
  background(bgColor);
  
  //snake 
  for(int i = 0; i < snakeLength; i++){
    fill(lerpColor(snakeColor1,snakeColor2,float(i)/float(snakeLength)));
    println();
    square(snakeX[i]*gridSize-gridSize,snakeY[i]*gridSize-gridSize,gridSize);
  }
  
  //fruit
  fill(fruitColor);
  square(fruitX*gridSize-gridSize,fruitY*gridSize-gridSize,gridSize);
  
  //high score
  fill(textColor);
  text("HIGH SCORE: " + highScore, width-8, 32);
}
////////////////////////////////////////////////////////////////
void keyPressed(){
  switch(keyCode){
    case 37:
      if(lastMovDir != "RIGHT"){movDir = "LEFT";}
      break;
    case 38:
      if(lastMovDir != "DOWN"){movDir = "UP";}
      break;
    case 39:
      if(lastMovDir != "LEFT"){movDir = "RIGHT";}
      break;
    case 40:
      if(lastMovDir != "UP"){movDir = "DOWN";}
      break;
  }
}
////////////////////////////////////////////////////////////////
boolean fruitCollision(){
  for(int i = 0; i < snakeLength; i++){    
    if( (snakeX[i] ==  fruitX) && (snakeY[i] == fruitY) ){
     return true;
    }
  }
  return false;
}
