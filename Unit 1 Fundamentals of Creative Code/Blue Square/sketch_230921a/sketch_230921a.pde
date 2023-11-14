//source: https://www.kemperartmuseum.wustl.edu/node/11221

void setup() {

  size (700, 700);
  
}
  void draw() {
    background(255);
    fill(39,77,204,255);
    square(9, 11, 611); 
    fill(35,70,90,255);
    square(65, 95, 488);
    fill(132,133,154,255);
    square(135, 203, 342);
    fill(234,173,67,255);
    square(195, 291, 221);
    
  }
 void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}














 
