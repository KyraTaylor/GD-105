//source: https://publicdelivery.org/josef-albers-homage-to-the-square/

void setup() {

  size (700, 700);
  
}
  void draw() {
    background(255);
    fill(175,180,15,255);
    square(82, 99, 598); 
    fill(69,121,169,255);
    square(138, 205, 447);
    fill(37,92,185,255);
    square(186, 276, 346);
    fill(40,72,23,255);
    square(247, 381, 215);
    
    


    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }
