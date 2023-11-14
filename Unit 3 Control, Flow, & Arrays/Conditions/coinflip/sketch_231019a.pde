//source: https://youtu.be/4JzDttgdILQ
boolean flip1, flip2;

void setup() {
  size(640, 360);
  // sets the coinflip variables
  flip1 = random(1) > 0.5;
  flip2 = random(1) > 0.5;
}

void draw() {
  background(0);
  stroke(255);
  fill(175);
  rectMode(CENTER);

  //the mouseY variable is at a certain position the shape will change based on boolean variable
  if (flip1) {
    if (mouseY < 120) {
      line(250, 130, 350, 220);
    } else if (mouseY < 240) {
      square(300, 180, 100);
    } else {
      circle(300, 180, 100);
    }
  } else {
    // different shape if flip1 is false
    line(100, 50, 200, 150);
  }

  stroke(127);
  strokeWeight(4);

  // draws more lines for flip 2
  if (flip2) {
    line(0, 120, width, 120);
    line(0, 240, width, 240);
  } else {
    // different shape if flip2 is false
    line(0, 180, width, 180);
  }
}
