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
  fill(224, 212, 1, 255);
  line(-108, -219, 8, -360);

  //red


  stroke(213, 92, 86, 255);
  strokeWeight(18);
  fill(242, 80, 70, 255);
  noFill();
  rect(205, -141, 222, 222, 80);
  rect(208, 80, 220, 220, 80);



  //green

  noFill();
  stroke(201, 229, 123, 255);
  strokeWeight(18);
  fill(132, 164, 34, 255);
  line(-224, 235, -32, 237);
  line(16, 327, -109, 70);
  line(-111, 69, -283, 312);
  //blue

  noFill();
  stroke(215, 231, 234, 255);
  strokeWeight(4);
  fill(117, 165, 200, 255);
  line(-97, -82, 205, -155);
  line(-76, -82, 211, -83);
}
