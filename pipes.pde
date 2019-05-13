class pipe {
  float x, y, d, s, xbs,xint;
  birb b;
  pipe (float xb, float speedb, birb bb) {
    x = xb;
    y = 0;
    s = speedb;
    b = bb;
    d = random(10, 450);
    xbs = xb;
    xint = xb;
  }

  void reset() {
    d = random(10, 450);
    x = xint;
  }

  void render() {
    fill(#06CE04);
    rect(x, y, 40, d);
    rect(x, d + 100, 40, height);
  }

  void movement() {
    x -= s ;
    if (x < -10) {
      x = 610;
      d = random(-2, 450);
    }
  }

  void collision() {
    if (b.x == x && b.y >= d && b.y <= d + 100) {
      score++;
    }
    if (b.x == x && !(b.y >= d && b.y <= d + 100)) {
      scene = 2;
    }
  }
}
