/**
*
* Author: Elohim Guevara Varela
*
* Assignment 2: Patterns with Loops - Focus on parameters
*
* Introduction to Programming For The Visual Arts with p5.js
* from www.kadenze.com
* The first version was in p5.js, but this is a Processing
* version. To learn more visit: processing.org
*
* Song: This one Life by Keith Merrill. 
* https://youtu.be/Rm6tqTz9maE
* My own interpretation apply in the code.
*
*/

int vertical;
int diagonal;
int arcSize;

void setup() {
  size(800, 600);  
}

void draw() {
 // Change the values to obtain other results
  for (vertical = 0; vertical < width; vertical += 10) {
    for (diagonal = 0; diagonal < 1600; diagonal += 20) {
      for (int rectSize = 600; rectSize > 0; rectSize -= 20) {
        stroke(160);
        line(vertical, 0, vertical, 600);
        stroke(245);
        line(0, diagonal, diagonal, 0);
        noFill();
        rect(0, 0, rectSize, rectSize);
      }
    }
  }
  // change the values to obtain other results
  for (arcSize = 0; arcSize < 1000; arcSize += 30) {
    int col = 235;
    stroke(col);
    noFill();
    arc(400, 300, 10 + arcSize, 10 + arcSize, 0 + arcSize,   TWO_PI + arcSize);
  } 
}
