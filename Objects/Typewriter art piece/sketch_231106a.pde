int edge, cols, rows, frames=120, radius=180;
float cellSize, theta, offSet;
PVector c;
 
void setup() {
  size(540, 540, P2D);
  smooth(4);
  stroke(0);
  edge = int(height*.1);
  rows = 27;
  cols = 27;
  cellSize = (height-2*edge)/rows;
  c = new PVector(cellSize, cellSize);
}
 
void draw() {
  randomSeed(4545);
  background(255);
  for (int j=0; j<cols; j++) {
    float x = edge+(j+.5)*cellSize;
    offSet = TWO_PI/cols*j;
    for (int i=0; i<rows; i++) {
      float offSet2 = TWO_PI/rows*i;
      float s = map(sin(theta+offSet*3+offSet2*6), -1, 1, .1, .8);
      float y = edge+(i+.5)*cellSize;
      if (dist(x, y, width/2, height/2)<radius) {
        if (random(1)>.3) {
          cross(x, y, s);
        } else {
          ellipse(x, y, s*cellSize, s*cellSize);
        }
      }
    }
  }
  theta -= TWO_PI/frames;
  //if (frameCount<=frames) saveFrame("image-###.gif");
}
 
void cross(float x, float y, float scalar) {
  pushMatrix();
  translate(x, y);
  PVector temp = PVector.mult(c, scalar);
  line(-temp.x/2, -temp.y/2, temp.x/2, temp.y/2);
  line(-temp.x/2, temp.y/2, temp.x/2, -temp.y/2);
  popMatrix();
}
