/**
*
* Author: Elohim Guevara
*
* Assignment 9: Game
*
*/

// Declare objects
PFont font;
Button button;

boolean onOff = false;

void setup() {
  size(1000, 500);
  // Init objects
  font = loadFont("JamrulNormal-48.vlw");
  color gray = color(204);
  color white = color(255);
  color black = color(0);
  button = new Button(width*0.40, height*0.45, width*0.20, height*0.10, gray, white, black);
}

void draw() {
  if (onOff) {
    background(227, 32, 204);
  } else {
    background(227, 32, 204);
    button.update();
    button.display();
    fill(0);
    textSize(35);
    text("START", width*0.446, height*0.525);
  }
}

void mousePressed() {
  button.press();
}

void mouseReleased() {
  onOff = true;
  button.release();
}
