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

