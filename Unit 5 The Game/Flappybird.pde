//source https://www.youtube.com/playlist?list=PLAE4MzuQm3Gwj2QLcqpepbTuIuzi_18mS took me 1-2 hours but have fun! :D
PImage bg, bird, toppipe, downpipe; //character player, background, pipes
int bgx, bgy, g, Vby; //background and velocity
int[] pipeX, pipeY; //arrays for pipes
int gameState, score; // score testing
float bx, by, birdWidth, birdHeight; // flappy itself and height
float downpipeX, downpipeY, downpipeWidth, downpipeHeight; //mario pipes let's go
float toppipeX, toppipeY, toppipeWidth, toppipeHeight; 

void setup() //runs once
{
  size(800, 670);
  bg = loadImage("./img/bg.jpg"); //bacground
  bird = loadImage("./img/bird.png"); //character
  downpipe = loadImage("./img/downpipe.png"); //pipes
  toppipe = loadImage("./img/toppipe.png");
//flappy position
  bx = 100;
  by = 50;
  g = 1; //gravity and acceleration of character
  pipeX = new int[5]; //pipe
  pipeY = new int[pipeX.length];
  for (int i = 0; i < pipeX.length; i++)
  {
    pipeX[i] = width + 200*i; //position of pipes
    pipeY[i] = (int)random(-350, 0);
  }
  gameState =-1; //startscreen
}
//makes the background go into a loop forever
void draw()
{
  if(gameState ==-1)
  {
    startScreen();
  }
 else if (gameState==0)
  {
    setBg(); //sets background
    setPipes(); //sets the pipes
    bird(); // puts flappy on the top
    showScore();
  } else
  {
    fill(255);
    text("YOU LOSE", 20, 100);
  }
}

int currentScore = 0;

void showScore() //this shows the player score
{
  fill(0);
  textSize(32);
  text("Score: "+ currentScore, width - 170, 40);
}

void startScreen() //instructions
{
  image(bg, 0, 0);
  textSize(40);
  text("Welcome to Flappy Bird!", 40, 100);
  text("Click the mouse to begin...", 40, 200);
  if(mousePressed) //click the mouse to begin the game!
 {
   by = height/2;
    gameState = 0;
}

}
void setPipes() //sets up the position of pipe and collisions
{
  for (int i = 0; i < pipeX.length; i++)
  {
    image(downpipe, pipeX[i], pipeY[i]); // pipe image
    image(toppipe, pipeX[i], pipeY[i] + 680); // another pipe image
    downpipeX = pipeX[i]; //variables for pipes
    downpipeY = pipeY[i];
    downpipeWidth = 50;
    downpipeHeight = 300;
    
    toppipeX = pipeX[i]; //sets the variables for the pipe
    toppipeY = pipeY[i] + 680;
    toppipeWidth = 50; // width based on pipe image
    toppipeHeight = 300; //height on pipe image
    
    pipeX[i]-= 2; // pipes stay on the left 
    if (pipeX[i] < -200) // once pipe is off screen it gets deleted and position will be reseted
    {
      pipeX[i] = width;
    }
     if (bx + birdWidth > downpipeX && bx < downpipeX + downpipeWidth) {
      if (!(by + birdHeight > downpipeY && by < downpipeY + downpipeHeight)) {//flappy has to hit the pipes based on his width and height
      }
        gameState = 1;
      }
        else if (bx == downpipeX || bx == downpipeX + 1) {
     
      {
      score++; //score will increase based on how you pass the pipes without dying
      }
    }
  }
}


void bird() //flappy finally appears on the screen
{
  image(bird, bx, by);
  by = by + Vby;
  Vby = Vby + g;
  if (by > height || by < 0)
  {
    text("OH NO! FLAPPY FELL OFF THE SCREEN...", 20, 34); //game checks if flappy falls off the screen
    gameState=1;
  }
}

void mousePressed() // you can try mouseclick too but I prefer mousepressed 
{
  Vby = -15;
}

void setBg() //background is in an infinite loop so don't worry
{
  image(bg, bgx, bgy);
  image(bg, bgx + bg.width, bgy);
  bgx = bgx - 2;
  if (bgx < -bg.width)
  {
    bgx = 0; //resets when the first image is finished and goes on FOREVER
  }
}
