
void setup() {
  size(1000, 1000);
}

void draw() {
  background(254);
  strokeWeight(15);

  for (int x = 0; x < width; x = x + 95) {
    rect(x, 2, 33, 933);
    rect(x, 158, 54, 681);
    fill(random(255));
    for (int y = 7; y < height; y = y + 41) {
    line(-5, y, width, y);
    
  if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
  }
    
    
 
    
      }
    }
  }

  
