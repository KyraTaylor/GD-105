int[] nums = {30, 40, 10, 5};

void setup() {
  size(400, 400);
}


void draw() {
  background(0);
  stroke(235, 64, 52);
  strokeWeight(4);
  noFill();
  ellipse(200, 200, nums[1], nums[1]);
  stroke(52, 186, 235);
  strokeWeight(4);
  noFill();
  ellipse(153, 200, nums[1], nums[1]);
  stroke(9, 156, 12);
  strokeWeight(4);
  noFill();
  ellipse(246, 202, nums[1], nums[1]);
  stroke(92, 14, 227);
  strokeWeight(4);
  noFill();
  ellipse(106, 200, nums[1], nums[1]);
  stroke(227, 152, 14);
  strokeWeight(4);
  noFill();
  ellipse(290, 200, nums[1], nums[1]);
}
