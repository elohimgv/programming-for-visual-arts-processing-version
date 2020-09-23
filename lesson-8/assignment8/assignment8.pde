/**
*
* Author: Elohim Guevara Varela
*
* Assignment 8: Terrarium
*
* The first version was in p5.js, but this is a Processing 
* version. To learn more about Processing visit: processing.org
*
*/

// Declare object
Creature monster;

int posX1 = 0;
int posY1 = 0;
int posX2 = 800;
int posY2 = 0;

void setup() {
  // Canvas size
  size(800, 500);
  // Create object
  monster = new Creature(12, width/2, height/2, 200, 0.0, 347.0, 63, 0.0, 347.0, 63.0, 305.0, 0.0, 45.0, 494.0, 
                        0.0, 45.0, 400, 137, 90, 373, 123, 384, 141, 426, 123, 415, 144, 384, 156, 
                        388, 163, 395, 156, 400, 163, 405, 156, 409, 163, 415, 156, 0, 353, 446, 216, 216, 35, 1);
}

void draw() {
  background(239, 116, 48);
  
  randomLines();
  
  if (keyPressed == true) {
    monster.explotion();
  } else {
    monster.render();
  }
  
  // Motion line top to bottom 
  posY1++;
  posY2++;
  line(posX1, posY1, posX2, posY2);
  if (posY1 > 500 && posY2 > 500) {
    // Update
    posY1 = 0;
    posY2 = 0;
  }
}

void randomLines() {
  // Motion diagonal line
  int track = 0;
  while (track < 50) {
    line(random(700), random(400), random(700), random(400));
    track++;
  }
}
