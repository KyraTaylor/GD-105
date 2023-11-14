PImage trumpmugshot;
PFont impact;

void setup() {
  size(1100, 1100);
  
  
  
  // load our fonts and images
  trumpmugshot = loadImage("images/trumpmugshot.jpg");
  impact = loadFont("Impact-108.vlw");
  
  // set our font draw settings
  textFont(impact);
  textAlign(CENTER, CENTER);
}

void draw() {
  // draw the image
  scale(0.76);
  image(trumpmugshot, 0, 0);
  
  translate(250,0);
  
  
  // then put text on top of it
  fill(#000000);
  text("ELECTION INTERFERENCE", 319, 91); 
  text("NEVER SURRENDER!", 394, 224);
  text("DONALDTRUMP.COM", 484, 363);
  fill(#ffffff);
  text("ELECTION INTERFERENCE", 321, 87); 
  text("NEVER SURRENDER!", 399, 228);
  text("DONALDTRUMP.COM", 488, 360);
}

void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
