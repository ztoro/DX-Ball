

public class Ball {
 
  private int y = 300;
  private boolean to_down = true;
  
  private int x = 400;
  private boolean to_right = true;
  
  private int radius = 10;
  private int speed = 5;
  
  public void draw() {
    fill(0, 255, 0); 
    circle(x, y, radius*2);
  }
  
  public void move() {
    update_y();
    update_x();
  }
  
  public void changeDirection () {
    if (to_down == true) {
      to_down = false; 
    } else {
      to_down = true;
    }
  }
    
  private void update_x() {
     if (to_right == true & x != 800-radius) {
        x = x+speed;
     } else if (x == 800-radius) {
       to_right = false;
       x = x-speed;
     } else if (to_right == false & x != radius) {
       x = x-speed;
     } else if (to_right == false & x == radius) {
       to_right = true;
       x = x+speed;     
     }
  }

  private void update_y() {
    if (to_down == true & y != 600-radius) {
        y = y+speed;
     } else if (y == 600-radius) {
       to_down = false;
       y = y-speed;
     } else if (to_down == false & y != radius) {
       y = y-speed;
     } else if (to_down == false & y == radius) {
       to_down = true;
       y = y+speed;     
     }
  }
}
