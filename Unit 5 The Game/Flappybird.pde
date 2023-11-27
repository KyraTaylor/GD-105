//source https://www.youtube.com/playlist?list=PLAE4MzuQm3Gwj2QLcqpepbTuIuzi_18mS took me 1-2 hours but have fun! :D
PImage bg, bird, toppipe, downpipe; //character player, background, pipes
int bgx, bgy, bx, by, g, Vby; //background and velocity
int[] pipeX, pipeY; //arrays for pipes
int gameState, score;

void setup() //runs once
{
  size(800, 670);
  bg = loadImage("./img/bg.jpg"); //bacground
  bird = loadImage("./img/bird.png"); //character
  downpipe = loadImage("./img/downpipe.png"); //pipes
  toppipe = loadImage("./img/toppipe.png");
  bx = 100;
  by = 50;
  g = 1; //gravity and acceleration of character
  pipeX = new int[5]; //pipe
  pipeY = new int[pipeX.length];
  for (int i = 0; i < pipeX.length; i++)
  {
    pipeX[i] = width + 200*i;
    pipeY[i] = (int)random(-350, 0);
  }
  gameState =-1;
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
    setBg();
    setPipes();
    bird(); // puts flappy on the top
  } else
  {
    fill(255);
    text("YOU LOSE", 20, 100);
  }
}

void score()
{
  fill(0);
  textSize(32);
  text("Score: "+ score, width - 170, 40);
}

void startScreen()
{
  image(bg, 0, 0);
  textSize(40);
  text("Welcome to Flappy Bird!", 40, 100);
  text("Click the mouse to begin...", 40, 200);
  if(mousePressed)
 {
   by = height/2;
    gameState = 0;
}
}
void setPipes()
{
  for (int i = 0; i < pipeX.length; i++)
  {
    image(downpipe, pipeX[i], pipeY[i]);
    image(toppipe, pipeX[i], pipeY[i] + 680);
    pipeX[i]-= 2;
    if (pipeX[i] < -200)
    {
      pipeX[i] = width;
    }
    if (bx > (pipeX[i]-65) && bx < pipeX[i] + 420) //flappy has to hit the pipes based on his width and height
    {
      if (!(by > pipeY[i] + 390 && by < pipeY[i] + (390 + 290-90)))
      {
        gameState = 1;
      }
       else if ((bx==pipeX[i]) || bx == pipeX[i] + 1)
     
      {
      score++;
      }
    }
  }
}



void bird() //character controls here
{
  image(bird, bx, by);
  by = by + Vby;
  Vby = Vby + g;
  if (by > height || by < 0)
  {
    text("OH NO! FLAPPY FELL OFF THE SCREEN...", 20, 34);
    gameState=1;
  }
}

void mousePressed() // you can try click too
{
  Vby = -15;
}

void setBg()
{
  image(bg, bgx, bgy);
  image(bg, bgx + bg.width, bgy);
  bgx = bgx - 2;
  if (bgx < -bg.width)
  {
    bgx = 0; //resets when the first image is finished and goes on FOREVER
  }
}
