

public class Bat {
  
  private int width = 100;
  private int height = 20;
  
  public void draw() {
    fill(110);
    if (mouseX < 700) {
      circle(mouseX, 560, 20);
      circle(mouseX+width, 560, 20);
      rect(mouseX, 550, width, height);
    } else {
      circle(700, 560, 20);
      circle(700+width, 560, 20);
      rect(700, 550, width, height);
    }
  }
  
  public void hit(Ball ball) {
    if (mouseX <= 700) {
      if (ball.y > 550-ball.radius &
          ball.y < 560-ball.radius & 
          ball.x > mouseX & 
          ball.x < mouseX+width) {
        ball.changeDirection();
      }
    } else {
      if (ball.y > 550-ball.radius &  
          ball.x > 700) {
        ball.changeDirection();
      }
    }
  }
}
