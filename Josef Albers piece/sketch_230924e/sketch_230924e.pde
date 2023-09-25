void setup() {

  size (1024, 1024);
  
}
  void draw() { 
    background(255);
    
    fill(0,0,0,255);
    noStroke();
    rect(40, 322, 568, 182);
    
    fill(60,72,107,255);
    noStroke();
    square(89,450,94);
    
    fill(60,72,107,255);
    noStroke();
    square(96,95,93);
    
    fill(0,0,0,255);
    noStroke();
    square(95,182,93);
    
    fill(0,0,0,255);
    noStroke();
    square(452,182,93);
    
    fill(0,0,0,255);
    noStroke();
    square(271,182,93);
    
    fill(60,72,107,255);
    noStroke();
    square(453,88,93);
    
    fill(60,72,107,255);
    noStroke();
    square(308,142,93);
    
    fill(60,72,107,255);
    noStroke();
    circle(656,127,93);
    
    fill(60,72,107,255);
    noStroke();
    square(680,148,93);
    
    fill(60,72,107,255);
    noStroke();
    square(687,501,93);
    
    fill(60,72,107,255);
    noStroke();
    square(483,450,93);
    
    fill(60,72,107,255);
    noStroke();
    square(327,502,93);
    
    fill(147,118,224,255);
    triangle(484, 389, 535, 343, 440, 343);
    
    fill(0,0,0,255);
    noStroke();
    triangle(142, 681, 337, 680, 233, 783);
    
    fill(0,0,0,255);
    noStroke();
    triangle(151, 15, 333, 16, 243, 96);
    
    fill(0,0,0,255);
    stroke(0);
    line(99, 10, 213, 9);
    
    fill(0,0,0,255);
    noStroke();
    triangle(869, 14, 1061, 15, 963, 102);
    
    fill(0,0,0,255);
    noStroke();
    triangle(889, 690, 1065, 688, 970, 789);
    
    fill(60,72,107,255);
    noStroke();
    circle(657,493,93);
    
    fill(60,72,107,255);
    noStroke();
    circle(1027,157,93);
    
    fill(60,72,107,255);
    noStroke();
    circle(1023,493,93);
    
    fill(147,118,224,255);
    noStroke();
    circle(617,259,19);
    
    fill(0,0,0,255);
    noStroke();
    circle(678,602,32);
    
    noFill();
    

    

    
    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }
     
