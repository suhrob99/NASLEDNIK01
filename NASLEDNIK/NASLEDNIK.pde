class Snow {
  float x,
  y;
  int z;

  Snow() {
    z = (int) random(0, 8);
    x = random(0, width);
    y = random( - height, 0) * z * 0.25;
  }

  void fall() {
    noStroke();
    fill(255, 0, 0, z * 30);
    ellipse(x, y, 100, 100);
    y += z * 0.20;
    x += random( - 1, 1) * (z * 0.03);
  }
}
Snow[] flakes;

void setup() {
  fullScreen();
  smooth();

  flakes = new Snow[300];
  for (int i = 0; i < 300; i++) flakes[i] = new Snow();

}

void draw() {
  background(20);

  for (int i = 0; i < 300; i++) {
    flakes[i].fall();
    if (flakes[i].y > height + 20) flakes[i] = new Snow();
  }

}

void mousePressed() {
  Snow temp = new Snow();
  temp.x = mouseX;
  temp.y = mouseY;
  flakes[(int) random(0, 250)] = temp;
}