void setup() {
  size(1000, 1000);
}

void draw() {
  background(254);
  strokeWeight(15); //makes the lines thick

  for (int x = 0; x < width; x += 95) { //105 lines instead of 200
    rect(x, 2, 33, 933);
    rect(x, 158, 54, 681);
    triangle(x + 10, 800, x + 40, 800, x + 25, 750);
    triangle(x + 9, 238, x + 6, 117, x + 89, 184);
    ellipse(x + 25, 500, 50, 50);

    fill(128, 0, 128);
  }
}
void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
