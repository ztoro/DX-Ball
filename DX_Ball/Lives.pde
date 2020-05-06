

class Lives {
 
  int counter = 3;
  boolean isGameOver = false;
  
  void draw() {
    textSize(14);
    fill(200);
    String livesString = "Lives: " + this.counter;
    text(livesString, 20, 20);  
  }
  
  void loseLife() {
    this.counter = this.counter - 1;
    if (this.counter == 0) {
      this.isGameOver = true;
    }
  }
}
