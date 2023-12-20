int ballCount = 100; // number of balls flying

//properties of each ball that spawns
float[] x = new float[ballCount];
float[] y = new float[ballCount];
float[] xSpeed = new float[ballCount];
float[] ySpeed = new float[ballCount];
float[] size = new float[ballCount];
float[] r = new float[ballCount];
float[] g = new float[ballCount];
float[] b = new float[ballCount];

void setup() {
  size(800, 600);
  fullScreen();
  
  //ball color is randomized and height
  for(int i = 0; i < ballCount; i++){
    x[i] = random(width);
    y[i] = random(height);
    xSpeed[i] = random(-5, 5);
    ySpeed[i] = random(-5, 5);
    size[i] = random(10, 30);
    r[i] = random(256);
    g[i] = random(256);
    b[i] = random(256);
  }
}

void draw() {
  background(0);


      //draw each ball
  for(int i = 0; i < ballCount; i++){

    //ball speed and position including the direction when hitting the wall of the 
    // screen
    x[i] += xSpeed[i];
    if(x[i] < 0 || x[i] > width){
      xSpeed[i] *= -1; // ball goes in another direction and ends up leaving the screen
    }

    y[i] += ySpeed[i];
    if(y[i] < 0 || y[i] > height){
      ySpeed[i] *= -1; //ball goes in another direction and ends up leaving the screen
    }
      
    
   fill(r[i], g[i], b[i]);
   ellipse(x[i], y[i], size[i], size[i]);

  }
}
void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
