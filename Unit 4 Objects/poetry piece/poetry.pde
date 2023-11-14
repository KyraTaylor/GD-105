PFont f;
String message = "Our love still young";//whatever the text goes here

void setup() {
  size(600, 600);
  f = createFont("Arial", 20, true); //creates the font used in processing
  fill(#030302); // fills the color of the text
}

void draw() {
 background(255);
 textFont(f);
 text(message,10,height/2); // moves and rotates text
}
