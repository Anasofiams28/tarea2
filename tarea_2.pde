void setup() {
  size(500, 500);
  background(255);
  noStroke();
}

void draw(){
  frameRate(5);
  float l = 40;
  float h = l * sqrt(3) / 2;
  float y = -h;
  int fila = 0;

  while (y < height + h) {
    float comenzarx;

    if (fila - 2 * (fila / 2) == 0) { 
      comenzarx = 0;
    } else {
      comenzarx = -l / 2;
    }

    float x = comenzarx;

    while (x < width + l) {
      fill(random(255), random(255), random(255));
      triangle(x, y + h, x + l / 2, y, x + l, y + h); 
      fill(random(255), random(255), random(255));
      triangle(x, y + h, x + l / 2, y + 2 * h, x + l, y + h);
      x += l;
    }
    y += h;
    fila += 1;
  }
}
