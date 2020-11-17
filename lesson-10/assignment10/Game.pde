class Game {
  float paddleSizeX;
  float paddleSizeY;
  float ballPosX;
  float ballPosY;
  int ballSize;
  float ballSpeedX;
  float ballSpeedY;
  boolean collision;
  int counter = 0;
  int level;
  boolean nextLevel;
  int paddleTouch = 0;
  boolean bottomTouch;
  
  // Constructor
  Game(float x, float y, float sx, float sy) {
    paddleSizeX = width*0.15;
    paddleSizeY = height*0.05;
    ballPosX = x; 
    ballPosY = y; 
    ballSize = 20;
    ballSpeedX = sx;
    ballSpeedY = sy;
    collision = false;
    level = 1;
    nextLevel = false;
    bottomTouch = false;
  }
  
  void display(float paddlePosX, float paddlePosY) {
    if (collision) {
      fill(255, 234, 70);
    } else {
      fill(255);
    }
    // Paddle
    rect(paddlePosX, paddlePosY, paddleSizeX, paddleSizeY);
    // Ball
    fill(255);
    ellipse(ballPosX, ballPosY, ballSize, ballSize);
  }
 
  void update() {
    // Update ball position
    ballPosX+=ballSpeedX;
    ballPosY+=ballSpeedY;
    // Collision
    if ((ballPosX >= paddlePosX) && (ballPosX <= paddlePosX+paddleSizeX) &&
        (ballPosY >= paddlePosY) && (ballPosY <= paddlePosY+paddleSizeY)) {
      ballSpeedX = ballSpeedX * -1;
      ballSpeedY = ballSpeedY * -1;
      collision = true;
      paddleTouch++;
      if (paddleTouch == 3) {
        level++;
        paddleTouch = 0;
      } 
      if (paddleTouch == 0) {
        nextLevel = true;
      }
    } else {
      counter++;
      if (counter == 30) {
        collision = false;
        counter = 0;
      }
    }
    if (ballPosX <= ballSize/2 || ballPosX > width) {
      ballSpeedX = ballSpeedX * -1;
    }
    if (ballPosY <= ballSize/2) {
      ballSpeedY = ballSpeedY * -1;
    }
    if (ballPosY >= height) {
      ballSpeedY = ballSpeedY * -1;
      bottomTouch = true;
    }
    //println(bottomTouch);
  }
}
