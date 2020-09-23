/**
*
* Author: Elohim Guevara
*
* Assignment 5: Synthesis A, Nonlinear Narrative
*
*/

// Vars for change to state to state
int state = 0;
int nextState = 0;

// Var to delay change image to another 
int counter = 0;

// Arrays for images
PImage[] images = new PImage[5]; 
String[] str = {"thread","draw","art","colors","flowers"};

// Array for texts
String[] txt = new String[12];

// Array for words
String[] word = new String[5];

// Font vars
PFont fontTitle,fontParagraph;

void setup() {
  // Set up size canvas
  size(1024, 660);
  // To load images
  for (int i = 0; i < 5; i++) {
    images[i] = loadImage(i+"-"+str[i]+".png");
  }
  
  // To load font
  fontTitle = loadFont("Constantia-Bold-48.vlw");
  fontParagraph = loadFont("CorbelLight-48.vlw");
  
  // Init array word
  word[0] = "Crisis";
  word[1] = "Drawing";
  word[2] = "Experiences";
  word[3] = "Colors";
  word[4] = "Flower";
  
  // Init array txt
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
  
  // Create a shape
  noStroke();
  fill(117, 236, 240, 60);
  quad(width*.58, height*.03, width*.98, height*.03, 
       width*.02, height*.95, width*.02, height*.57);

  // Conditions for chage to state to state
  if (state == nextState) {
    if (state == 0){
      render(images[0], word[0], txt[0], txt[1], txt[2], 2, 7);
    } else if (state == 1) {
      render(images[1], word[1], txt[3], txt[4], txt[5], 2, 7);
    } else if (state == 2) {
      render(images[2], word[2], txt[6], txt[7], null, 2, 7);
    } else if (state == 3) {
      render(images[3], word[3], txt[8], txt[9], null, 2, 7);
    } else if (state == 4) {
      render(images[4], word[4], txt[10], txt[11], null, 2, 7);
    }
  } else {
    counter++;
    if (counter == 40) {
      state = nextState;
      counter = 0;
    }

    // Re-maps a number from one range to another.
    float a = map(counter, 0, 40, 0, 255);
    // Apply transparency between images change
    tint(255, a);
    if (nextState == 0) {
      image(images[0], widthPercent('i',2), widthPercent('i',7));
    } else if (nextState == 1) {
      image(images[1], widthPercent('i',2), widthPercent('i',7));
    } else if (nextState == 2) {
      image(images[2], widthPercent('i',2), widthPercent('i',7));
    } else if (nextState == 3) {
      image(images[3], widthPercent('i',2), widthPercent('i',7));
    } else if (nextState == 4) {
      image(images[4], widthPercent('i',2), widthPercent('i',7));
    }

    tint(255, 255 - a);
    if (state == 0) {
      image(images[0], widthPercent('i',2), widthPercent('i',7));
    } else if (state == 1) {
      image(images[1], widthPercent('i',2), widthPercent('i',7));
    } else if (state == 2) {
      image(images[2], widthPercent('i',2), widthPercent('i',7));
    } else if (state == 3) {
      image(images[3], widthPercent('i',2), widthPercent('i',7));
    } else if (state == 4) {
      image(images[4], widthPercent('i',2), widthPercent('i',7));
    }
  }
}

void keyTyped() {
  // if letter a, b, c, d or f is pressed, 
  // active the corresponding nextState
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

// Render on sketch
void render(PImage img, String word, String txt1, String txt2, 
            String txt3, float widthGrid, float heightGrid) {
  image(img, widthPercent('i',widthGrid), widthPercent('i',heightGrid));
  textAlign(CENTER);
  // Set font for title
  fill(255, 0, 0);
  textFont(fontTitle, 50);
  text(word, widthPercent('t',2), heightPercent('t',9));
  
  fill(0);
  // Set font for paragraph
  textFont(fontParagraph, 25);
  if (txt3 == null) {
    text(txt1, widthPercent('t',2), heightPercent('t',1.26));
    text(txt2, widthPercent('t',2), heightPercent('t',1.18));
  } else {
    text(txt1, widthPercent('t',2), heightPercent('t',1.26));
    text(txt2, widthPercent('t',2), heightPercent('t',1.18));
    text(txt3, widthPercent('t',2), heightPercent('t',1.1)); 
  } 
}

float widthPercent(char str, float grid) {
  float percentage = 0;
  float position = 0;
  // What is the percentage of the size width of 
  // image or text with respect to size width canvas
  if (str == 'i') { // i = image
    percentage = (images[0].width*100)/width; 
  } 
  if (str == 't') { // t = text
    percentage = (textWidth(str)*100)/width; 
  }

  // 100 - the image percentage
  percentage = 100 - percentage;
  // The result divide by grid 
  percentage = percentage/grid;
  // Divide by 100 to has the decimal values
  percentage = percentage/100;
  // The position to center the
  // image or text respect to canvas
  position = percentage*width;
  
  return position;
}

float heightPercent(char str, float grid) {
  float percentage = 0;
  float position = 0;
  // What is the percentage of the size height of 
  // image or text with respect to size height canvas
  if (str == 'i') { // i = image
    percentage = (images[0].height*100)/height; 
  } 
  if (str == 't') { // t = text
    percentage = (textWidth(str)*100)/height; 
  }
  
  // 100 - the image percentage
  percentage = 100 - percentage;
  // The result divide by grid 
  percentage = percentage/grid;
  // Divide by 100 to has the decimal values
  percentage = percentage/100;
  // The position to center the
  // image or text respect to canvas
  position = percentage*height;
  
  return position;
}
