int numBirds = 500;
Particle[] flock;

void setup() {
  size(1000, 1000);
  background(255);
  // creates birds
  flock = new Particle[numBirds];
  for (int i = 0; i < numBirds; i++) {
   float randomX = random(width);
   float randomY = random(height);
   color randomColor = color(random(255), random(255), random(255)); //colors for flocking
   flock[i] = new Particle(randomX, randomY, randomColor);
  }
}

void draw() {
  //background(255);
  
  // displays bird in each loop
  for (int i = 0; i < numBirds; i++) {
    flock[i].update();
  }
  
}
void mouseClicked() {
  String filename = "particleClass/frame" + frameCount + ".png";
  save(filename);
  println("Saved as " + filename); }
