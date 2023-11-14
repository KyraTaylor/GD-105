PImage obamashades;
PFont impact;

void setup() {
  size(1100, 1100);
  
  
  
  // load our fonts and images
  obamashades = loadImage("images/obamashades.jpg");
  impact = loadFont("Impact-108.vlw");
  
  // set our font draw settings
  textFont(impact);
  textAlign(CENTER, CENTER);
}

void draw() {
  // draw the image
  scale(0.76);
  image(obamashades, 0, 0);
  
  translate(250,0);
  
  
  // then put text on top of it
  fill(#000000);
  text("BIRTH CERTIFICATE?", 219, 91); 
  text("I WILL BE SURE THAT A COPY", 394, 233);
  text("IS ATTACHED TO YOUR INDICTMENT", 521, 361);
  fill(#ffffff);
  text("BIRTH CERTIFICATE?", 224, 87); 
  text("I WILL BE SURE THAT A COPY", 397, 228);
  text("IS ATTACHED TO YOUR INDICTMENT", 520, 355);
}

void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
