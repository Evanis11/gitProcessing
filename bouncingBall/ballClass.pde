class Ball {
  float x, y, vx, vy;

  Ball(float x_, float y_, float vx_, float vy_) {
    x=x_;
    y=y_;
    vx=vx_;
    vy=vy_;
  }

  void draw() {
    ellipse(x, y, 50, 50);
  }
}

