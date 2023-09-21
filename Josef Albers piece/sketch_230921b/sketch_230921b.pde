//source: https://www.si.edu/object/homage-square-glow%3Ahmsg_72.3

void setup() {

  size (700, 700);
  
}
  void draw() {
    background(255);
    fill(239,169,44,255);
    square(90, 110, 558); 
    fill(212,27,95,255);
    square(138, 164, 447);
    fill(187,0,75,255);
    square(186, 219, 346);
    fill(235,126,21,255);
    square(247, 293, 215);
    



















    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }



















 
