Line l1, l2;

void setup() {
  size(1000, 1000);
  background(random(0, 100), random(0, 100), random(0, 100));
  frameRate(1000000000);
  l1 = new Line(random(width), random(height));
  l2 = new Line(random(width), random(height));
}

void draw() {
  l1.display();
  //l2.display();
}
