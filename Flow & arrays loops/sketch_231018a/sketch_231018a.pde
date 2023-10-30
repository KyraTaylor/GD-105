
int num = 45;
float[] y = new float[num];
float sW;
void setup() {
  size(900, 900);
  surface.setLocation(987, 70);

  for (int n=0; n<num; n++) {
    y[n] = height/num*n;
  }
  sW = height/num/2;
}

void draw() {
  background(#b22234);


  for (int n=0; n<num; n++) {
    float alpha = map(y[n], 0, height, 0, 255);
    stroke(#3c3b6e, alpha);
    strokeWeight(sW);
    line(0, y[n], width, y[n]);


    y[n] += 0.5;
    if (y[n]>height) y[n]=0;
   {
  pushMatrix();
  translate(width*0.2, height*0.5);
  rotate(frameCount / -100.0);
  star(33, 22, 14, 84, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / -100.0);
  star(33, 22, 14, 84, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(33, 22, 14, 84, 5); 
  popMatrix();
  
}
  }

  stroke(#fefcfd);
  strokeWeight(height/7);
  noFill();
  ellipse(width/2, height/2, height-height/10, height-height/3);
  
}


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
