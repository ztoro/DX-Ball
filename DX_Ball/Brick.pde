import java.util.Random;

public class Brick {
  
  int width = 50;
  int height = 20;
  int arrayX;
  int arrayY;
  int x;
  int y;
  int red;
  int green;
  int blue;
  
  boolean isActive = true;
  
  Brick(int i, int j) {
    this.arrayX = i;
    this.arrayY = j;
    this.x = i*width;
    this.y = 100+j*height; 
    this.setColours();
  }
  
  
  void draw() {
    if (this.isActive) {
      fill(this.red, this.green, this.blue);
      rect(x, y, width, height);
    }
  }
  
  void setColours() {
    Random rand = new Random();    
    this.red = rand.nextInt(200);
    this.green = rand.nextInt(200);
    this.blue = rand.nextInt(200);
  }
  
  boolean hit(Ball ball, Wall wall, Score score) {
    if (this.isActive) {
      if (this.y > ball.y-2*ball.radius &
          this.y-this.height < ball.y-2*ball.radius &
          this.x < ball.x &
          this.x+this.width > ball.x) {
         System.out.println("Hit on regular brick!");
         ball.changeDirection();
         explode(wall, score);
         return true;
      }
    }
    return false;
  }
  
  void explode(Wall wall, Score score) {
    this.isActive = false;
    score.update(); 
  }
}
