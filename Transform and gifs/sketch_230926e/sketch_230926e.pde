PImage Trumpmugshot;
PFont impact;

void setup() {
  size(720, 720);
  
  // load our fonts and images
  Trumpmugshot = loadImage("images/Trumpmugshot.jpg");
  impact = createFont("Impact.ttf", 60);
  
  // set our font draw settings
  textFont(impact);
  textAlign(CENTER, CENTER);
}

void draw() {
  // draw the image
  image(Trumpmugshot, 0, 0);
  
  // then put text on top of it
  text("Forgot to tip the server", 206, 434);
}

void mouseClicked() {
  save("output.png");
  println(frameCount + ": saved as output.png");
}
