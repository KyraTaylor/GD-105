int totalFrames = 120;
int counter = 0;
void setup() {
  size(1000, 1000);
}

void draw() {
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output/gif-"+nf(counter, 3)+".png");
  counter++;
}


void render(float percent) {
  background(0);
  //ellipse(percent*width, height/2, 20, 20);

  float angle = percent * TWO_PI;
  translate(width/2, height/2);
  rectMode(CENTER);

  noFill();
  stroke(240, 222, 24, 255);
  strokeWeight(4);
  rotate(angle);
  fill(236, 81, 4, 255);
  square(120, 100, 220);

  noFill();
  stroke(201, 229, 123, 255);
  strokeWeight(4);
  rotate(angle);
  fill(115, 164, 34, 255);
  square(120, 100, 220);

  noFill();
  stroke(215, 231, 234, 255);
  strokeWeight(4);
  rotate(angle);
  fill(117, 165, 200, 255);
  square(120, 100, 220);

  noFill();
  stroke(244, 240, 158, 255);
  strokeWeight(4);
  rotate(angle);
  fill(251, 206, 14, 255);
  square(120, 100, 220);
}
