

Ball ball = new Ball();
Bat bat = new Bat();

void draw() {
  background(120);
  bat.draw();
  ball.draw();
  bat.hit(ball);
  ball.move();
}

void setup() {
  size(800, 600);
  noCursor();
}
