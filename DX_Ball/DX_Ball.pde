
int y = 300;
boolean to_down = true;

int x = 400;
boolean to_right = true;

int circleSize = 50;

void setup() {
  size(800, 600);
}

void update() {
  update_y();
  update_x();
}

void update_x() {
     if (to_right == true & x != 750) {
        x = x+5;
     } else if (x == 750) {
       to_right = false;
       x = x-5;
     } else if (to_right == false & x != 50) {
       x = x-5;
     } else if (to_right == false & x == 50) {
       to_right = true;
       x = x+5;     
     }
}

void update_y() {
  if (to_down == true & y != 550) {
        y = y+5;
     } else if (y == 550) {
       to_down = false;
       y = y-5;
     } else if (to_down == false & y != 50) {
       y = y-5;
     } else if (to_down == false & y == 50) {
       to_down = true;
       y = y+5;     
     }
}

boolean collision() {
  float distance = dist(x, y, mouseX, mouseY);
  if (distance < 100) {
    return true; 
  } else {
    return false;
  }
}

void draw() {
  background(120);
  fill(255, 0, 0);
  circle(x, y, 100);
  fill(0, 255, 0);
  circle(mouseX, mouseY, circleSize);
  update();
}
