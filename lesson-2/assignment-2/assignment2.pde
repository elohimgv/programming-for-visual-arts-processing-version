/**
*
* Author: Elohim Guevara
*
* Assignment 2: Patterns with Loops
*
* The first version was in p5.js, but this is a Processing 
* version. To learn more about Processing visit: processing.org
*
*/

// Global vars
int w;
int h;
color c = color(234, 12, 12);

void setup () {
  // Canvas size
  size(displayWidth, 280); 
}

void draw() {
  // Background color - some red color
  background(c);
  // Yellow lines
  stroke(254, 255, 23);
  // Pattern
  for (h = 0; h < height; h+=20) { // Change h+=?
    // Backslash
    for (w = width; w > 0; w-=20) {
      line(w, h, w-20, h+20);
    }
    // Forward slash
    for (w = width; w > 0; w-=40) { // Change h-=?
      line(w, h, w+20, h+20);
    }
  }
}
