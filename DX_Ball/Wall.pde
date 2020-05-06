

public class Wall {
  
  int wallHeight;
  int wallWidth;
  Brick[][] wallArray;
  
  Wall(int wallWidth, int wallHeight) {
    wallArray = new Brick[wallWidth][wallHeight];
    for (int i = 0; i < wallArray.length; i++) {
            for (int j = 0; j < wallArray[i].length; j++) {
                Random rand = new Random();    
                int num = rand.nextInt(10);
                if (num == 6) {
                  wallArray[i][j] = new UnbreakableBrick(i, j);
                } else if (num == 7 || num == 8) {
                  wallArray[i][j] = new ExplodingBrick(i, j);
                //} else if (num == 8) {
                //  wallArray[i][j] = new InvisibleBrick(i, j);
                } else {
                wallArray[i][j] = new Brick(i, j);
                }
            }
        }
  }
  
  void draw() {
    for (int i = 0; i < wallArray.length; i++) {
            for (int j = 0; j < wallArray[i].length; j++) {
                wallArray[i][j].draw();
            }
        }
  }
  
  void hit(Ball ball, Score score) {
    for (int i = 0; i < wallArray.length; i++) {
            for (int j = 0; j < wallArray[i].length; j++) {
                wallArray[i][j].hit(ball, this, score);
            }
        }
    }
    
  int getNumberOfUnbreakableBricks() {
     int num = 0;
     for (int i = 0; i < wallArray.length; i++) {
            for (int j = 0; j < wallArray[i].length; j++) {
              if (this.wallArray[i][j] instanceof UnbreakableBrick) {
                 num = num+1; 
              }
            }
     }
     return num;
  }
}
