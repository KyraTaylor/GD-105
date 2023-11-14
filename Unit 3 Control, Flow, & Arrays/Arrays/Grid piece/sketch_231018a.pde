//inspiration: https://www.vecteezy.com/vector-art/3430580-artistic-flag-of-usa-with-geometric-wave-concept-art-design
//source code: https://youtu.be/TOm5wKmn9yw

int num = 15; // it's for the rows and columns in the grid
float[][] y = new float[num][num]; // array code to store line coordinates
float sW;
void setup() {
  size(900, 900);
  // this will change the vertical lines in the grid
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      y[i][j] = height / num * i;
    }
  }
  sW = height / num / 2; // vertical lines stroke weight!
}

void draw() {
  background(#b22234);
 drawVerticalLine(); // makes a line instead of using a mask that I previously used
  drawStars(); // you can make stars
}

void drawVerticalLine() {
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      float alpha = map(y[i][j], 0, height, 0, 255);
      stroke(37, 150, 190, alpha);
      strokeWeight(sW);
      line(j * width / (num - 1), y[i][j], (j + 1) * width / (num - 1), y[i][j]);

      y[i][j] += 0.5;
      if (y[i][j] > height) y[i][j] = 0; // any more lines past the canvas height and width will reset
    }
  }
}
// rotate the stars and make them move easily with a dose of lag
void drawStars() {
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      pushMatrix();
      
      translate(j * width / (num - 1), i * height / (num - 1));
      rotate(frameCount / -100.0);
      // draws the store with the coordinates
      star(0, 0, 10, 30, 5); //
      popMatrix();
    }
  }
}

// draw a star
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle / 2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a + halfAngle) * radius1;
    sy = y + sin(a + halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
