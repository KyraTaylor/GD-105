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
  noFill();
  strokeWeight(9);
  noStroke();
  //ellipse(percent*width, height/2, 20, 20);

  float angle = percent * TWO_PI;
  translate(width/2, height/2);
  rectMode(CENTER);
  //baby blue
  stroke(91, 220, 221, 255);
  rotate(angle);
  triangle(88, 19, 198, -133, 298, 15);
 //red
  stroke(222, 107, 111, 255);
  rotate(angle);
  circle(224, 184, 220);
 //dark blue
  stroke(143, 172, 214, 255);
  rotate(angle);
  line(80, 80, -126, 270);
  line(-121, 80, 82, 277);
 //pink
  stroke(206, 169, 203, 255);
  rotate(angle);
  square(-312, 100, 171);
}
