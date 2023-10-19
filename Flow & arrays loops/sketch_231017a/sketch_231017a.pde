float x = 0;

void setup() {
  size(800, 800);
}

void draw(){
  background(255);
  
  x = 0;
  while (x < width){
    x = x + 20;
    fill(101);
    stroke(255);
    ellipse(x, 150, 16, 16);
  }
}
  
  
