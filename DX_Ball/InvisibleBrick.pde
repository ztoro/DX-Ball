

class InvisibleBrick extends Brick {
  
  InvisibleBrick(int i, int j) {
    super(i, j);
    this.setColours();
  }
  
  @Override
  void draw() {
    if (this.isActive) {
      fill(this.red, this.green, this.blue);
      rect(x, y, width, height);
    }
  }
  
  @Override
   void setColours() {  
    this.red = 0;
    this.green = 0;
    this.blue = 0;
  }
  
  @Override
  boolean hit(Ball ball, Wall wall, Score score) {
    if (this.isActive) {
      if (this.y >= ball.y-2*ball.radius &
          this.x <= ball.x &
          this.x+this.width > ball.x) {
         System.out.println("Hit on invisible brick!");
         ball.changeDirection();
         explode(wall, score);
         return true;
      }
    }
    return false;
  }
}
