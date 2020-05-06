

Ball ball = new Ball();
Bat bat = new Bat();
int wallHeight = 1;
Wall wall = new Wall(16, wallHeight);
Score score = new Score(16*wallHeight-wall.getNumberOfUnbreakableBricks());
Lives lives = new Lives();
boolean pause = false;

void draw() {
  if (lives.isGameOver) {
      gameOver();
    } else if (pause == false) {
      if (score.isNextLevel()) {
        startNextLevel();
    }
    background(0);
    drawObjects();
    bat.hit(ball);
    wall.hit(ball, score);
    handleGameState();
    ball.move();
  }
}

void setup() {
  size(800, 600);
  noCursor();
}

void keyPressed() {
  if (lives.isGameOver) {
    restartGameState(); 
  } else if (pause == false) {
    pause = true;
  } else {
    pause = false;
  }
}

void restartGameState() {
  ball = new Ball();
  bat = new Bat();
  wall = new Wall(16, wallHeight);
  score = new Score(160);
  lives = new Lives();
  pause = false;
}

void startNextLevel() {
  ball = new Ball();
  wallHeight = wallHeight+1;
  wall = new Wall(16, wallHeight);
  score.extendMaxScore(16*(wallHeight)-wall.getNumberOfUnbreakableBricks());
}

void drawObjects() {
  bat.draw();
  ball.draw();
  wall.draw();
  score.draw();
  lives.draw();
}

void handleGameState() {
  if (ball.isFallen()) {
       lives.loseLife();
       ball.reset();
    }
}

void gameOver() {
    background(0);
    textSize(30);
    String gameOverString = "Game Over! Score: " + score.points;
    text(gameOverString, 250, 300); 
    text("Press any key to continue...", 250, 350);
}
