class Game {
  float paddleSizeX;
  float paddleSizeY;
  float ballPosX;
  float ballPosY;
  int ballSize;
  float ballSpeedX;
  float ballSpeedY;
  boolean collision = false;
  int counter = 0;
  boolean nextLevel = false;
  int paddleTouch = 0;
  boolean lost = false;
  
  // Constructor
  Game(float x, float y, float sx, float sy) {
    paddleSizeX = width*0.15;
    paddleSizeY = height*0.05;
    ballPosX = x; 
    ballPosY = y; 
    ballSize = 20;
    ballSpeedX = sx;
    ballSpeedY = sy;
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
    // Collision between paddle and ball
    boolean left = ballPosX >= paddlePosX;
    boolean right = ballPosX <= paddlePosX+paddleSizeX;
    boolean top = ballPosY >= paddlePosY;
    boolean bottom = ballPosY <= paddlePosY+paddleSizeY;
    if ((left && right) && (top && bottom)) {
      ballSpeedX = ballSpeedX * -1;
      ballSpeedY = ballSpeedY * -1;
      collision = true;
      paddleTouch++;
      if (paddleTouch == 3) {
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
    // Collision between ball and walls
    left = ballPosX > width ;
    right = ballPosX <= ballSize/2;
    top = ballPosY >= height; 
    bottom = ballPosY <= ballSize/2;
    if (left || right) {
      ballSpeedX = ballSpeedX * -1;
    }
    if (top) {
      ballSpeedY = ballSpeedY * -1;
      lost = true;
    }
    if (bottom) {
      ballSpeedY = ballSpeedY * -1;
    }
  }
}
