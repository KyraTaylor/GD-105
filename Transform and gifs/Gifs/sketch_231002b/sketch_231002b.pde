int totalFrames = 120;
int counter = 0;
void setup() {
  size(1000, 1000);
}

void draw() {
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output/gif-####.png");
  counter++;
}


void render(float percent) {
  background(0);
  noStroke();
  //ellipse(percent*width, height/2, 20, 20);

  float angle = percent * TWO_PI;
  translate(width/2, height/2);
  rectMode(CENTER);
  //yellow
  fill(255, 187, 2, 255);
  rotate(angle);
  square(120, 80, 220);
  //red
  fill(243, 82, 32, 255);
  rotate(angle);
  square(120, 100, 220);
  //green
  fill(132, 164, 34, 255);
  rotate(angle);
  square(120, 100, 220);
  //blue
  fill(117, 165, 200, 255);
  rotate(angle);
  square(120, 100, 220);
}
