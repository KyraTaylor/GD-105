int totalFrames = 120;
int counter = 0;
void setup() {
  size(1000, 1000);
}

void draw() {
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output/gif-.png");
  
}


void render(float percent) {
  background(0);
  //ellipse(percent*width, height/2, 20, 20);

  float angle = percent * TWO_PI;
  translate(width/2, height/2);
  rectMode(CENTER);
//yellow

  noFill();
  stroke(240, 222, 24, 255);
  strokeWeight(4);
  fill(224,212,1,255);
  line(120, 80, 340, 300);
  
//red
  
  
  stroke(213,92,86,255);
  strokeWeight(4);
  fill(242,80,70,255);
  noFill();
  rect(220, 26, 222, 227, 6, 22, 63, 68);
  noFill();
  rect(219, -3, 220, 172, 20, 44, 85, 69);
 
  noFill();
  stroke(201, 229, 123, 255);
  strokeWeight(18);
  fill(132, 164, 34, 255);
  line(-224, 235, -32, 234);
  line(16, 312, -109, 70);
  line(-111, 69, -283, 312);

  noFill();
  stroke(215, 231, 234, 255);
  strokeWeight(4);
  fill(117, 165, 200, 255);
  line(120, 100, 220, 100);

  noFill();
  stroke(244, 240, 158, 255);
  strokeWeight(4);
  fill(251, 206, 14, 255);
  line(120, 100, 220, 100);
}
