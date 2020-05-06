

class ExplodingBrick extends Brick {
  
  ExplodingBrick(int i, int j) {
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
    this.red = 255;
    this.green = 165;
    this.blue = 0;
  }
  
  @Override
  boolean hit(Ball ball, Wall wall, Score score) {
    if (this.isActive) {
      if (this.y >= ball.y-2*ball.radius &
          this.x <= ball.x &
          this.x+this.width > ball.x) {
         System.out.println("Hit on exploding brick!");
         ball.changeDirection();
         explode(wall, score);
         return true;
      }
    }
    return false;
  }
  
  @Override
  void explode(Wall wall, Score score) {
    this.isActive = false;
    if (arrayY != wall.wallArray[arrayX].length-1) {
      if (wall.wallArray[this.arrayX][this.arrayY+1].isActive) {
        wall.wallArray[this.arrayX][this.arrayY+1].explode(wall, score);
      }
    }
    if (arrayY != 0) {
      if (wall.wallArray[this.arrayX][this.arrayY-1].isActive) {
        wall.wallArray[this.arrayX][this.arrayY-1].explode(wall, score);
      }
    }
    if (arrayX != wall.wallArray.length-1) {
      if (wall.wallArray[this.arrayX+1][this.arrayY].isActive) {
        wall.wallArray[this.arrayX+1][this.arrayY].explode(wall, score);
      }
    }
    if (arrayX != 0) {
      if (wall.wallArray[this.arrayX-1][this.arrayY].isActive) {
        wall.wallArray[this.arrayX-1][this.arrayY].explode(wall, score);
      }
    }
    score.update();
  }
}
