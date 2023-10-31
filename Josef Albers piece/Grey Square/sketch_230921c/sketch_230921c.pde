//source: https://www.sothebys.com/en/buy/auction/2020/contemporary-art-milan-2/study-to-homage-to-the-square-reddish-in-orange-2

void setup() {

  size (700,700);
  
}
  void draw() {
    background(255);
    fill(160,151,143,255);
    square(90, 110, 558); 
    fill(254,124,0,255);
    square(138, 168, 447);
    fill(217,168,101,255);
    square(247, 357, 215);
    



















    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }
















 
