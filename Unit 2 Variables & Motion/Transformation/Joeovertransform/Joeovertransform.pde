PImage Joebiden;
PFont impact;

void setup() {
  size(740, 720);
  
  
  
  // load our fonts and images
  Joebiden = loadImage("images/Joebiden.jpg");
  impact = loadFont("Impact-108.vlw");
  
  // set our font draw settings
  textFont(impact);
  textAlign(CENTER, CENTER);
}

void draw() {
  // draw the image
  scale(0.90);
  image(Joebiden, 0, 0);
  
  translate(250,0);
  
  
  // then put text on top of it
  fill(#000000);
  text("IT'S JOEVER", 106, 82); 
  text("JOEWARI DA", 105, 672);
  fill(#ffffff);
  text("IT'S JOEVER", 105, 87); 
  text("JOEWARI DA", 99, 675);
 
  
  stroke(#f50505);
  line(-148, 48, 356, 132);
  line(-143, 130, 366, 47);
  
  
  fill(#ffffff);
  noStroke();
  rotate(radians(45));
  rect(647, 53, 218, 152);
 
  
  fill(#f50505);
  circle(751, 125, 88);
}

void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
