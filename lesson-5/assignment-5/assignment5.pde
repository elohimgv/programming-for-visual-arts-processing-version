/**
*
* Author: Elohim Guevara Varela
*
* Assignment 5: Synthesis A, Nonlinear Narrative
*
* The first version was in p5.js, but this is a Processing 
* version. To learn more about Processing visit: processing.org
*
*/

// Variables for change to state to state
int state = 0;
int nextState = 0;
// Variable to delay change image to another with function tint()
int counter = 0;

// Array for images
PImage[] images = new PImage[5]; 

// Array for texts
String[] txt = new String[12];

// Array for words
String[] word = new String[5];

PFont font;

void setup() {
  size(1024, 660);
  
  images[0] = loadImage("0-thread.png");
  images[1] = loadImage("1-draw.png");
  images[2] = loadImage("2-art.png");
  images[3] = loadImage("3-colors.png");
  images[4] = loadImage("4-flowers.png");
  
  font = loadFont("ArialMT-48.vlw");
  textFont(font);
  textSize(50);
  textAlign(CENTER);

  word[0] = "crisis";
  word[1] = "drawing";
  word[2] = "experiences";
  word[3] = "colors";
  word[4] = "flower";

  txt[0] = "All begins with confusion without knowing where to go.";
  txt[1] = "In a point in our lives we need to define what to do.";
  txt[2] = "In fact I decided what to do.";
  txt[3] = "I decided to draw my adventures in the life.";
  txt[4] = "Walk without fears, walk and walk. When I am standing";
  txt[5] = "in front of a fear...fight against it.";
  txt[6] = "I want to be part of a good life experiences,";
  txt[7] = "be filled with enriching experiences.";
  txt[8] = "And that's what I've been doing... filling my life";
  txt[9] = "with colors, red, yellow, blue...";
  txt[10] = "How Keane said: everybody's changing.";
  txt[11] = "The world is in constant movement.";
}

void draw() {
  background(255);
  // Thickness of lines
  strokeWeight(0.1);
  // Loops for create a shape with lines
  for (int i = 0; i < 600; i += 20) {
    line(20, i, i , 20);
  }

  for (int i = 0; i < 1000; i += 25) {
    line(i, 650, 1024 + i, 20);
  }

  // Code for create a shape
  noStroke();
  fill(117, 236, 240, 60);
  quad(600, 20, 1004, 20, 20, 630, 20, 590);

  // Conditions for chage to state to state
  if (state == nextState) {
    if (state == 0){
      render(images[0], word[0], txt[0], txt[1], txt[2]);
    } else if (state == 1) {
      render(images[1], word[1], txt[3], txt[4], txt[5]);
    } else if (state == 2) {
      render(images[2], word[2], txt[6], txt[7], null);
    } else if (state == 3) {
      render(images[3], word[3], txt[8], txt[9], null);
    } else if (state == 4) {
      render(images[4], word[4], txt[10], txt[11], null);
    }
  } else {
    counter++;
    if (counter == 30) {
      state = nextState;
      counter = 0;
    }

    // map() - Re-maps a number from one range to another.
    float a = map(counter, 0, 30, 0, 255);
    // function to apply transparency between images change
    tint(255, a);

    if (nextState == 0) {
      image(images[0], 40, 40);
    } else if (nextState == 1) {
      image(images[1], 40, 40);
    } else if (nextState == 2) {
      image(images[2], 40, 40);
    } else if (nextState == 3) {
      image(images[3], 40, 40);
    } else if (nextState == 4) {
      image(images[4], 40, 40);
    }

    tint(255, 255 - a);

    if (state == 0) {
      image(images[0], 40, 40);
    } else if (state == 1) {
      image(images[1], 40, 40);
    } else if (state == 2) {
      image(images[2], 40, 40);
    } else if (state == 3) {
      image(images[3], 40, 40);
    } else if (state == 4) {
      image(images[4], 40, 40);
    }
  }
}

void keyTyped() {
  // Conditions... if letter a, b, c, d or f is pressed, active the corresponding nextState
  if (key == 'a' || key == 'A') {
    nextState = 0;
  } else if (key == 'b' || key == 'B') {
    nextState = 1;
  } else if (key == 'c' || key == 'C') {
    nextState = 2;
  } else if (key == 'd' || key == 'D') {
    nextState = 3;
  } else if (key == 'f' || key == 'F') {
    nextState = 4;
  }
}

void render(PImage img, String word, String txt1, String txt2, String txt3) {
  image(img, 40, 40);
  fill(255, 0, 0);
  text(word, 730, 80);
  fill(0);
  strokeWeight(0);
  textSize(16);
  
  if (txt3 == null) {
    text(txt1, 800, 400);
    text(txt2, 800, 420);
  } else {
    text(txt1, 800, 400);
    text(txt2, 800, 420);
    text(txt3, 800, 440); 
  } 
}
