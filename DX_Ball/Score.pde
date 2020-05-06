


class Score {
  
  int points;
  int maxScore;
  
  Score(int maxScore) {
    this.points = 0;
    this.maxScore = maxScore;
  }
  
  void draw() {
    textSize(14);
    fill(200);
    String scoreString = "Score: " + this.points;
    text(scoreString, 700, 20);  
  }
  
  void update() {
     this.points = this.points + 1; 
  }
  
  boolean isNextLevel() {
     if (this.points == this.maxScore) {
         return true;
     } else {
       return false;
     }
  }
  
  void extendMaxScore(int extension) {
   this.maxScore =  this.maxScore + extension;
  }
}
