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
    noStroke();
    triangle(484, 389, 535, 343, 440, 343);
    
    fill(0,0,0,255);
    noStroke();
    triangle(142, 681, 337, 680, 233, 783);
    
    fill(0,0,0,255);
    noStroke();
    triangle(151, 15, 333, 16, 243, 96);
    
    stroke(0,0,0,255);
    strokeWeight(3);
    noFill();
    line(99, 10, 213, 9);
    line(394, 8, 511, 9);
    line(685, 10, 821, 9);

    
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
    circle(1022,157,100);
    
    fill(60,72,107,255);
    noStroke();
    circle(1029,493,102);
    
    fill(147,118,224,255);
    noStroke();
    circle(617,259,25);
    
    fill(0,0,0,255);
    noStroke();
    circle(678,602,41);
    
    stroke(147,118,224,255);
    strokeWeight(4);
    noFill();
    square(168,428,21);
    
    stroke(60,72,107,255);
    noFill();
    strokeWeight(3);
    line(151,392,151,443);
    line(150,393,132,418);
    line(132,418,151,443);
    
    //triangles 
    stroke(0,0,0,255);
    noFill();
    strokeWeight(4);
    line(464, 320, 1025, 318);
    line(510, 277, 622, 381);
    line(512, 277, 700, 276);
    line(623, 383, 700, 277);
    line(642, 10, 553, 73);
    line(759, -21, 909, 125);
    triangle(579, 323, 559, 423, 650, 321);
    triangle(833, 321, 732, 411, 669, 322);
    triangle(1000, 319, 919, 418, 839, 321);
    line(689, 401, 618, 442);
    line(715, 478, 840, 375);
    line(717, 578, 638, 666);
    line(468, 661, 560, 587);
    line(483, 676, 1031, 672);
    line(577, 502, 979, 499);
    line(475, 906, 1031, 908);
    line(446, 903, 571, 803);
    line(687, 900, 771, 818);
    triangle(504, 500, 651, 502, 578, 594);
    triangle(828, 502, 756, 590, 655, 501);
    triangle(831, 501, 893, 598, 983, 500);
    triangle(581, 803, 483, 676, 658, 674);
    triangle(800, 820, 657, 674, 841, 674);
    triangle(1026, 672, 961, 827, 842, 673);
    triangle(658, 909, 602, 1016, 472, 906);
    triangle(660, 906, 728, 1101, 853, 909);
    triangle(853, 906, 1020, 911, 913, 1077);
    
    stroke(60,72,107,255);
    noFill();
    strokeWeight(3);
    triangle(503, 801, 455, 847, 454, 743);

    
    if (frameCount == 1) {
      String filename = "output";
      save(filename + ".png");
      print("canvas saved as " + filename + ".png");
    }
  }
     
