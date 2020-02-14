

public class Bat {
  
  private int width = 100;
  private int height = 20;
  
  public void draw() {
    fill(255, 0, 0);
    if (mouseX < 700) {
      rect(mouseX, 550, width, height);
    } else {
      rect(700, 550, width, height);
    }
  }
  
  public void hit(Ball ball) {
    if (ball.y > 550-ball.radius & ball.y < 550+height & ball.x > mouseX & ball.x < mouseX+width) {
      ball.changeDirection();
    }
  }
}
