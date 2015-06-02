Dot[] dots = new Dot[10000];


void setup() {
  size(800, 800);
  background(0);
  
  colorMode(HSB, 1, 1, 1);

  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Dot(random(20, width-20), random(20, height-20));
  }
}

void draw() {
  background(0);

  for (int i = 0; i < dots.length; i++) {
    dots[i].update();
    dots[i].attract(mouseX, mouseY);
  }
}
