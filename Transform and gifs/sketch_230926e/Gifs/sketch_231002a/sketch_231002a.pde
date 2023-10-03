int totalFrames = 120;
int counter = 0;
void setup(){
  size(400, 400);
}

void draw() {
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output/gif-"+nf(counter,3)+".png");
  counter++;
  if (counter == totalFrames) { exit ();
  }
}

void render(float percent) {
  background(0);
  
 float angle = percent * TWO_PI;
 translate(width/2, height/2);
 rectMode(CENTER);
 noFill();
 stroke(255);
 strokeWeight(2);
 rotate(angle);
 square(0, 0, 100);
 
}
