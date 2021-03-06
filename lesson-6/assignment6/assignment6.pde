/**
*
* Author: Elohim Guevara Varela
*
* Assignment 6: Audio Visualizer
*
*/

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer sound;

float angle = 0.0;
// Change the position of the wave in "axis y"
// if increment the offset value, "axis y" 
// increment and vice versa
int offset = 300;
// Amplitud of the wave
float scalar = 85.0;
// Speed of the motion
float speed = 0.05;
// Size ball (width)
int sizeXball = 10;
// Size ball (height)
int sizeYball = 10;
// Boolean var to activate an increase 
// and decrease the ball
boolean state = true;
// Var to move the ball x axis
float moveX;

void setup() {
  size(1200, 600);
  minim = new Minim(this);
  sound = minim.loadFile("sound.mp3");
}

void draw() {
  background(255);

  // Point series
  for (int x = 20; x <= width - 20; x += 5) {
    float y = offset + (sin(angle) * scalar);
    point(x, y);
    angle += (TWO_PI / 60) / 4;
  }

  // RGB - GREEN color
  float G = map(mouseX, 0, width, 0, 255);
  // RGB - BLUE color
  float B = map(mouseY, 0, height, 0, 255);
  // ball moves on sine curve
  float y = offset + (sin(angle) * scalar);
  // Condition to increase the ball if is false
  if (state == false) {
    fill(234, G, B);
    ellipse(mouseX + 20, y, sizeXball, sizeYball);
  }
  // Condition to increase the ball if is true
  // and avoid to disappear the ball when  
  // LEFT_ARROW key is pressed
  if (state == true) {
    fill(234, G, B);
    ellipse(mouseX + 20, y, sizeXball, sizeYball);
  }

  noFill();
  strokeWeight(3);
  rect(0, 0, width, height);
}

void keyPressed() {
  loop();
  state = !state;
  // Decision to increase the ball
  if (key == CODED) {
     if (keyCode == RIGHT) {
      sizeXball += 10;
      sizeYball += 10; 
    // Decision to decrease the ball
    } else if (keyCode == LEFT) {
      sizeXball -= 10;
      sizeYball -= 10;
      // Minimum size ball 
      if (sizeXball == 0 && sizeYball == 0) {
        sizeXball = 10;
        sizeYball = 10;
        }
      } 
   }
}

void keyReleased() {
  noLoop();
}

void mouseMoved() {
  loop();
  moveX = mouseX;
}

void mousePressed()
{
  if (sound.isPlaying()) {
    sound.pause();
  } else {
    sound.play();
  }
}

