//source: https://www.sothebys.com/en/buy/auction/2020/contemporary-art-milan-2/study-to-homage-to-the-square-reddish-in-orange-2

void setup() {

  size (600,600);
  
}
  void draw() {
    background(255);
    fill(150,145,135,255); //gray
    square(23, 18, 551); 
    fill(252,123,0,255); //orange
    square(76, 91, 444);
    fill(221,171,106,255); //yellowish orange
    square(185, 253, 219);
    



















    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }
















 
