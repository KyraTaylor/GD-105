//source: https://www.si.edu/object/homage-square-glow%3Ahmsg_72.3

void setup() {

  size(600, 570);
  
}
  void draw() {
    background(255);
    fill(251,164,0,255); //orange
    square(11, 8, 537); 
    fill(247,100,2,255); //dark orange
    square(67, 73, 430);
    fill(228,83,0,255); // dirty orange
    square(124, 162, 308);
    fill(219,32,0,255); // red
    square(174, 228, 211);
    



















    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }



















 
