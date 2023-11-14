//source: https://publicdelivery.org/josef-albers-homage-to-the-square/

void setup() {

  size (600, 600);
  
}
  void draw() {
    background(255);
    fill(174,177,9,255); //green
    square(1, 7, 588); 
    fill(72,125,175,255); // baby blue
    square(47, 73, 492);
    fill(36,92,183,255); // ocean blue
    square(105, 163, 368);
    fill(39,69,23,255); // dark green
    square(175, 264, 234);
    
    


    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }
