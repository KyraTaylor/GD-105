class Particle {
  // attributes / fields
  PVector pos; // position
  PVector vel; // velocity
  PVector acc; // acceleration
  
  color col;
  
  float noseLength, wingSpan;
  
  // constructor
  Particle(float x, float y, color c){
    pos = new PVector(x, y);
    vel = PVector.random2D();
    acc = new PVector(0, 0);
    col = c;
    noseLength = 52;
    wingSpan = 33;
  }
  
  // methods
  void update(){
    // draw at current position
    resetMatrix();
    translate(pos.x, pos.y);
    rotate(vel.heading());
    
    fill(col, frameCount / 5.0); // fade in from 0 opacity
    noStroke();
    //square(0, 0, wingSpan);
    quad(0, 0,
         -wingSpan, -wingSpan,
         noseLength, 8,
         -wingSpan, wingSpan);
    
    // update position for next frame
    pos.add(vel);
    vel.add(acc);
    vel.limit(1); // optional
    // what we do to acceleration here will make a big difference in behavior
    acc = PVector.fromAngle(noise(pos.x * .003, pos.y * .003) * TAU).mult(.01);
    
    // if particles go outside the bounds of the screen...
    // maybe we should do something to put them back on the screen!
  }
  
}
