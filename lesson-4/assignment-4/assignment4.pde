/**
*
* Author: Elohim Guevara Varela
*
* Assignment 4: Collage
* 
* Introduction to Programming For The Visual Arts with p5.js
* from www.kadenze.com
* The first version was in p5.js, but this is a Processing
* version. To learn more visit: processing.org
*
* MOOC: Introduction to Programming For The Visual Arts with p5.js
*
* Platform: https://www.kadenze.com/
*
*/

// Variable for load image
PImage img;
// Variable for font
PFont font;
// Colors for rect()
int bermellon_100;
int yellow_100;
int blue_100;
// Rect sizes
float sizeX;
float sizeY;
float sizeX2;
float sizeY2;
float sizeX3;
float sizeY3;
// Rect positions
float x;
float y;
float x2;
float y2;
float x3;
float y3;

void setup() {
  size(1365, 569);
  img = loadImage("wilkinson_afterglow.jpg");
 
  font = loadFont("Dialog.plain-48.vlw");
  textFont(font);

  // Colors with transparency of alpha 100
  bermellon_100 = color(230, 46, 0, 100);
  yellow_100 = color(255, 233, 0, 100);
  blue_100 = color(0, 0, 255, 100);

  sizeX = random(45, 437);
  sizeY = random(50, 300);
  sizeX2 = random(10, 500);
  sizeY2 = random(15, 666);
  sizeX3 = random(20, 830);
  sizeY3 = random(18, 787);

   x = random(5, 1200);
   y = random(10, 400);
   x2 = random(10, 1100);
   y2 = random(15, 410);
   x3 = random(20, 950);
   y3 = random(5, 380);
}

void draw() {
  //noLoop();
  image(img, 0, 0, width, height);
  // Colors with transparency of alpha 90
  int bermellon_90 = color(230, 46, 0, 90);
  int yellow_90 = color(255, 233, 0, 90);
  int blue_90 = color(0, 0, 255, 90);
  
  strokeWeight(0);
  if (pmouseX < 455) {
    fill(bermellon_90);
  }
  else if (pmouseX > 455 && pmouseX < 910) {
    fill(yellow_90);
  }
  else if (pmouseX > 910 && pmouseX < width + 1) {
    fill(blue_90);
  }
  rect(0, 0, 1365, 569);

  fill(bermellon_100);
  rect(x, y, sizeX, sizeY);
  fill(yellow_100);
  rect(x2, y2, sizeX2, sizeY2);
  fill(blue_100);
  rect(x3, y3, sizeX3, sizeY3);

  fill(255);
  textSize(50);
  String str = " I still thinking about you";
  text(str, random(width), random(height), random(width), random(height));
}

void mouseReleased() {
  if (sizeX == random(45, 437) && sizeY == random(50, 300) && sizeX2 == random(10, 500) && sizeY2 == random(15, 666)
     && sizeX3 == random(20, 830) && sizeY3 == random(18, 787)) {
    sizeX = random(66, 400);
    sizeY = random(35, 380);
    sizeX2 = random(5, 550);
    sizeY2 = random(10, 68);
    sizeX3 = random(22, 850);
    sizeY3 = random(16, 800);
  }
  else {
    sizeX = random(45, 437);
    sizeY = random(50, 300);
    sizeX2 = random(10, 500);
    sizeY2 = random(15, 666);
    sizeX3 = random(20, 830);
    sizeY3 = random(18, 787);
  }

  if (x == random(5, 1200) && y == random(10, 400) && x2 == random(10, 1100) && y2 == random(15, 410) && x3 == random(20, 950)
     && y3 == random(5, 380)) {
    x = random(25, 1105);
    y = random(30, 390);
    x2 = random(23, 889);
    y2 = random(33, 310);
    x3 = random(10, 100);
    y3 = random(7, 450);
  }
  else {
    x = random(5, 1200);
    y = random(10, 400);
    x2 = random(10, 1100);
    y2 = random(15, 410);
    x3 = random(20, 950);
    y3 = random(5, 380);
  }
}
