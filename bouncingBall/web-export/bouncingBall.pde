ArrayList<Ball> bouncingBalls;

void setup() {
  size(600, 400);
  bouncingBalls=new ArrayList<Ball>();
  bouncingBalls.add(new Ball(100, 200, 1, 1, 25,color(255,0,0)));
  bouncingBalls.add(new Ball(200, 200, 1, -1, 25,color(255,0,0)));
}

void draw() {
  background(255);
  for (Ball ball : bouncingBalls) {
    ball.draw();
    ball.move();
  }
}

class Ball {
  float x, y, vx, vy, radius;
  int colr;
  float gravity=.2;

  Ball(float x_, float y_, float vx_, float vy_, float radius_, int colr_) {
    x=x_;
    y=y_;
    vx=vx_;
    vy=vy_;
    radius=radius_;
    colr=colr_;
  }

  void draw() {
    fill(colr);
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    x=x+vx;
    y=y+vy;
    vy=vy+gravity;
    if (y>height-radius) {
      vy=-10; //-abs(vy);
    }
    if (x<radius) {
      vx=abs(vx);
    }
    if (y<radius) {
      vy=abs(vy);
    }
    if (x>width-radius)vx=-abs(vx);
  }
}


