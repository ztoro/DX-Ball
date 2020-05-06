

public class Ball {
 
  int y = 500;
  boolean to_down = false;
  
  int x = 400;
  boolean to_right = true;
  
  int radius = 10;
  int speed = 5;
  
  void draw() {
    fill(128); 
    circle(x, y, radius*2);
  }
  
  boolean isFallen() {
    if (ball.y > 600) {
      return true;
    } else {
      return false;
    }
  }
  
  void reset() {
    ball.y = 500;
    ball.x = 400;
    ball.to_down = false;
  }
  
  void move() {
    updateY();
    updateX();
  }
  
  void changeDirection () {
    if (to_down == true) {
      to_down = false; 
    } else {
      to_down = true;
    }
    this.move();
  }
    
  void updateX() {
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

  void updateY() {
    if (to_down == true) {
        y = y+speed;
     } else if (to_down == false & y != radius) {
       y = y-speed;
     } else if (to_down == false & y == radius) {
       to_down = true;
       y = y+speed;     
     }
  }
}
