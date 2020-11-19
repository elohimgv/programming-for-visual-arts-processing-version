/**
*
* Author: Elohim Guevara
*
* Assignment 10: Game
*
*/

// Declare objects
PFont font;
Button button;
Game game;
// To start game
boolean startGame = false;
// Level game
int counter = 0;
int countGameLost = 0;
boolean youLost = false;
boolean deadToGameOver = false;
// To store background color
color backColor;
// To handle game levels
int[] level = new int[1];
int add = 1;
// Axes values x, y
float paddlePosX;
float paddlePosY;

void setup() {
  size(1000, 500);
  smooth();
  font = loadFont("JamrulNormal-48.vlw");
  color gray = color(204);
  color white = color(255);
  color black = color(0);
  button = new Button(width*0.40, height*0.45, width*0.2, height*0.1, gray, white, black);
  game = new Game(random(width), 20, random(5), random(6));
  level[0] = 1;
  paddlePosX = width*0.425;
  paddlePosY = height*0.7;
  textSize(100);
  println(textWidth("GAME OVER"));
}

void draw() {
  backColor = color(227, 32, 204);
  if (startGame) {
    background(backColor);
    counter++;
    fill(0);
    // Level game
    if (game.nextLevel) {
      add++;
      // Shorten to array
      level = (int[]) shorten(level);
      // Append to array
      level = (int[]) append(level, add);
      game.nextLevel = false;
      startGame = false;
    }
    if (game.lost) {
      countGameLost++;
      youLost = true;
      game.lost = false;
      startGame = false;
    } //<>//
    textSize(20);
    text("Level:", width*0.02, height*0.05);
    for (int i = 0; i < level.length; i++) { 
      text(str(level[i]), width*0.08, height*0.05);
    }
    text("Lifes:", width*0.83, height*0.05);
    for (float i = width*0.91; i < width; i+=30) {
      noStroke();
      if (countGameLost > 0 && countGameLost <= 2 && i == (width*0.91)) { 
        fill(255);
      } else if (countGameLost > 1 && countGameLost <= 3  && i == (width*0.91)+30) {
        fill(250);
      } else if (countGameLost == 3 && i == (width*0.91)+30*2) { 
          startGame = false; 
          countGameLost = 0; 
          deadToGameOver = true;
          level[0] = 1;
          add = 1;
      } else {
        fill(0);
      }
      ellipse(i, height*0.04, 10, 10);
    }
    game.display(paddlePosX, paddlePosY);
    game.update();
  } else {
    if (counter <= 0) {
      starter(backColor, counter);
    } else { 
      if (youLost) {
        if (deadToGameOver) {
          backColor = color(0);
          starter(backColor, counter);
        } else {
          backColor = color(255, 15, 43);
          starter(backColor, counter);
        }
      } else {
        backColor = color(42, 220, 43);
        starter(backColor, counter);
      }
    }
  } 
}

void starter(color col, int count) { 
  background(col);
  button.update();
  button.display();
  fill(0);
  textSize(35);
  text("START", width*0.446, height*0.525);
  if (count > 0) { 
    fill(255);
    textSize(100);
    if (col == color(255, 15, 43)) {
      text("YOU LOST!", width*0.269, height*0.4);
    } else if (col == color(42, 220, 43)) {
      text("YOU WIN!", width*0.269, height*0.4);
    } else {
      text("GAME OVER", width*0.21, height*0.4);
    }
  }
}

void mousePressed() {
  button.press();
}

void mouseReleased() {
  game = new Game(random(width), 20, random(5), random(6)); 
  youLost = false;
  deadToGameOver = false;
  startGame = true;
  button.release();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      if (paddlePosX == width-game.paddleSizeX) {
        paddlePosX = width-game.paddleSizeX;
      } else {
        paddlePosX+=5;
      }
    } 
    if (keyCode == LEFT) {
      if (paddlePosX == 0) {
        paddlePosX = 0;
      } else {
        paddlePosX-=5;
      }
    }
  }
}
