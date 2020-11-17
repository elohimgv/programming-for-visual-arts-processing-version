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
boolean youLost = false;
// To store background color
color backColor;
// To handle game levels
int[] level = new int[1];
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
  level[0] = game.level; 
  paddlePosX = width*0.425;
  paddlePosY = height*0.7;
}

void draw() {
  backColor = color(227, 32, 204);
  if (startGame) {
    background(backColor);
    counter++;
    fill(0);
    // Level game
    if (game.nextLevel) {
      // Shorten to array
      level = (int[]) shorten(level);
      // Append to array
      level = (int[]) append(level, game.level);
      game.nextLevel = false;
      startGame = false;
    }
    if (game.lost) {
      youLost = true;
      game.lost = false;
      startGame = false;
    } //<>//
    textSize(20);
    text("Level:", width*0.02, height*0.05);
    for (int i = 0; i < level.length; i++) { 
      text(str(level[i]), width*0.08, height*0.05);
    }
    // Player lifes
    // TODO: Lack change ellipse color when the player lost
    text("Lifes:", width*0.83, height*0.05);
    for (float i = width*0.91; i < width; i+=30) {
      noStroke();
      ellipse(i, height*0.04, 10, 10);
    }
    game.display(paddlePosX, paddlePosY);
    game.update();
  } else {
    if (counter <= 0) {
      starter(backColor, counter);
    } else { 
      if (youLost) {
        backColor = color(0);
        starter(backColor, counter);
      } else {
        backColor = color(2, 240, 4);
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
    if (col == color(0)) {
      text("YOU LOST!", width*0.269, height*0.4);
    } else {
      text("YOU WIN!", width*0.269, height*0.4);
    }
  }
}

void mousePressed() {
  button.press();
}

void mouseReleased() {
  youLost = false;
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
