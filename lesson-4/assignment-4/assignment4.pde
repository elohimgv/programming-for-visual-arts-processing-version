/**
*
* Author: Elohim Guevara
*
* Assignment 4: Collage
*
*/

// Image var
PImage img;
// Font var
PFont font;
// Color vars 
color bermellon;
color yellow;
color blue;
// Rectangle sizes
float sizeX,sizeY,sizeX2,sizeY2,sizeX3,sizeY3 = 0;
// Rectangle positions
float x,y,x2,y2,x3,y3 = 0;

void setup() {
  // Canvas size
  size(1365, 569);
  frameRate(10);
  img = loadImage("wilkinson_afterglow.jpg");
  font = loadFont("Dialog.plain-48.vlw");
  
  // Colors with transparency 
  bermellon = color(230, 46, 0, 100);
  yellow = color(255, 233, 0, 100);
  blue = color(0, 0, 255, 100);
}

void draw() {
  //noLoop();
  image(img, 0, 0, width, height);
  // Colors with transparency 
  color backBermellon = color(230, 46, 0, 90);
  color backYellow = color(255, 233, 0, 90);
  color backBlue = color(0, 0, 255, 90);
  
  // Before image it has a color with alpha value
  // that it act like filter and it changes 
  // through the movement of mouse in "X" axis
  boolean leftSpace = pmouseX < width/3;
  boolean middleSpace = pmouseX > width/3 && pmouseX < (width/3)*2;
  boolean rightSpace = pmouseX > (width/3)*2 && pmouseX < width + 1;
  strokeWeight(0);
  if (leftSpace) {
    fill(backBermellon);
  } else if (middleSpace) {
    fill(backYellow);
  } else if (rightSpace) {
    fill(backBlue);
  }
  rect(0, 0, width, height);

  // Random rectangles
  fill(bermellon);
  rect(x, y, sizeX, sizeY);
  fill(yellow);
  rect(x2, y2, sizeX2, sizeY2);
  fill(blue);
  rect(x3, y3, sizeX3, sizeY3);

  // For display random text
  fill(255);
  textFont(font, 50); // The font set 
  String str = "I still thinking about you";
  text(str, random(width), random(height), random(width), random(height));
}

void mouseReleased() {
  // Random rectangle sizes
  sizeX = random(45, 437);
  sizeY = random(50, 300);
  sizeX2 = random(10, 500);
  sizeY2 = random(15, 666);
  sizeX3 = random(20, 830);
  sizeY3 = random(18, 787);
  
  // Random rectangle positions
  x = random(5, 1200);
  y = random(10, 400);
  x2 = random(10, 1100);
  y2 = random(15, 410);
  x3 = random(20, 950);
  y3 = random(5, 380);
}
