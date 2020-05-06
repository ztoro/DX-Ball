

class UnbreakableBrick extends Brick {
  
  
  UnbreakableBrick(int i, int j) {
    super(i, j);
    this.setColours();
  }
  
  
  @Override
  void setColours() {  
    this.red = 50;
    this.green = 0;
    this.blue = 40;
  }
  
  @Override
  boolean hit(Ball ball, Wall wall, Score score) {
      if (this.y >= ball.y-2*ball.radius &
          this.x <= ball.x &
          this.x+this.width > ball.x) {
         System.out.println("Hit on unbreakable brick!");
         ball.changeDirection();
      }
      return false;
  }
  
  @Override
  void explode(Wall wall, Score score) {}
}
