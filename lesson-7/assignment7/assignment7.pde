/**
*
* Author: Elohim Guevara 
*
* Assignment 7: Typography
*
*/

// Font variable
PFont font1;
PFont font2;
// Var for change to state to state
int state = 1;
// Var for background image
PImage kim;
// Var for drawLetter4 function
PImage k1;
// Var for drawLetter5 function
int m = 5;
// Var for drawLetter6 function
PImage  k2;
// Arrays for drawLetter7 function
int[] x = {80, 107, 80, 130, 80, 135};
int[] y = {94, 274, 180, 115, 180, 274};
// Var for drawLetter10 function
PImage k3;
// Var for drawLetter11 function
String letterK1;
// Var for drawLetter12 function
String letterK2;

void setup() {
  // Canvas size
  size(300, 400);
  kim = loadImage("images/kim.jpg");
  k1 = loadImage("images/k.png");
  k2 = loadImage("images/k_1.png");
  k3 = loadImage("images/k_2.png");
  // Features for font - drawLetter11 function
  font1 = loadFont("Bahnschrift-48.vlw");
  textFont(font1);
  textAlign(CENTER);
  letterK1 = "k";
  // features for font - drawLetter12 function
  font2 = loadFont("Bahnschrift-48.vlw");
  textFont(font2);
  letterK2 = "k!";
}

void draw() {
  // Image background
  image(kim, 0, 0);
  // Color for image background with 
  // alpha value (transparency)
  fill(240, 70, 218, 130);
  rect(0, 0, 300, 400);
  // Change state
  switch (state) {
  case 1:
    drawLetter1();
    break;
  case 2:
    drawLetter2();
    break;
  case 3:
    drawLetter3();
    break;
  case 4:
    drawLetter4();
    break;
  case 5:
    drawLetter5(m);
    break;
  case 6:
    drawLetter6();
    break;
  case 7:
    drawLetter7();
    break;
  case 8:
    drawLetter8();
    break;
  case 9:
    drawLetter9();
    break;
  case 10:
    drawLetter10(100, 20, 60, 82, 10);
    break;
  case 11:
    drawLetter11();
    break;
  case 12:
    drawLetter12();
    break;
  }
}

// Letter "K" shape 1
void drawLetter1() { 
  int counter = 0;
  int space = 5;
  while (counter < 5) {
    counter++;
    fill(244+(counter * space), 070+(counter * space), 017+(counter * space));
    noStroke();
    beginShape();
    vertex(107.33+(counter*space), 94.33+(counter*space));
    vertex(107.33+(counter*space), 274.59+(counter*space));
    vertex(129.33+(counter*space), 274.59+(counter*space));
    vertex(129.33+(counter*space), 229+(counter*space));
    vertex(141+(counter*space), 215.67+(counter*space));
    vertex(183+(counter*space), 274.59+(counter*space));
    vertex(210.67+(counter*space), 274.59+(counter*space));
    vertex(157.33+(counter*space), 202.33+(counter*space));
    vertex(203.67+(counter*space), 151.5+(counter*space));
    vertex(176.67+(counter*space), 151.5+(counter*space));
    vertex(129.67+(counter*space), 208.67+(counter*space));
    vertex(129.67+(counter*space), 94.33+(counter*space));
    vertex(107.33+(counter*space), 94.33+(counter*space));
    endShape();
  }
}

// Letter "K" shape 2
void drawLetter2() {
  int repet = 10;
  int n = 2;
  int plus = 10;
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i < repet; i++) {
    // Down K
    for (int downK  = repet-1; downK > 0; downK--) {
      fill(230+downK*6);
      beginShape();
      vertex((107.33/n)+(downK+plus), (94.33/n)+(downK + plus));
      vertex((107.33/n)+downK, (274.59/n)+downK);
      vertex((129.33/n)+(downK+plus), (274.59/n)+(downK+plus));
      vertex((129.33/n)+downK, (229/n)+downK);
      vertex((141/n)+(downK+plus), (215.67/n)+(downK+plus));
      vertex((183/n)+downK, (274.59/n)+downK);
      vertex((210.67/n)+(downK+plus), (274.59/n)+(downK+plus));
      vertex((157.33/n)+downK, (202.33/n)+downK);
      vertex((203.67/n)+(downK+plus), (151.5/n)+(downK+plus));
      vertex((176.67/n)+downK, (151.5/n)+downK);
      vertex((129.67/n)+(downK+plus), (208.67/n)+(downK+plus));
      vertex((129.67/n)+downK, (94.33/n)+downK);
      vertex((107.33/n)+(downK+plus), (94.33/n)+(downK+plus));
      endShape();
    }
    // Above K
    for (int aboveK = 0; aboveK <= i+1; aboveK++) {
      fill(244, 070, 017);
      beginShape();
      vertex((107.33/n)-(aboveK+plus), (94.33/n)-(aboveK+plus));
      vertex((107.33/n)-aboveK, (274.59/n)-aboveK);
      vertex((129.33/n)-(aboveK+plus), (274.59/n)-(aboveK + plus));
      vertex((129.33/n)-aboveK, (229/n)-aboveK);
      vertex((141/n)-(aboveK+plus), (215.67/n)-(aboveK+plus));
      vertex((183/n)-aboveK, (274.59/n)-aboveK);
      vertex((210.67/n)-(aboveK+plus), (274.59/n)-(aboveK+plus));
      vertex((157.33/n)-aboveK, (202.33/n)-aboveK);
      vertex((203.67/n)-(aboveK+plus), (151.5/n)-(aboveK+plus));
      vertex((176.67/n)-aboveK, (151.5/n)-aboveK);
      vertex((129.67/n)-(aboveK+plus), (208.67/n)-(aboveK+plus));
      vertex((129.67/n)-aboveK, (94.33/n)-aboveK);
      vertex((107.33/n)-(aboveK+plus), (94.33/n)-(aboveK + plus));
      endShape();
    }
  }
}

// Letter "K" shape 3
void drawLetter3() {
  stroke(0);
  strokeWeight(5);
  beginShape();
  vertex(107.33, 94.33);
  vertex(107.33, 274.59);
  vertex(129.33, 274.59);
  vertex(129.33, 229);
  vertex(141, 215.67);
  vertex(183, 274.59);
  vertex(210.67, 274.59);
  vertex(157.33, 202.33);
  vertex(203.67, 151.5);
  vertex(176.67, 151.5);
  vertex(129.67, 208.67);
  vertex(129.67, 94.33);
  vertex(107.33, 94.33);
  endShape();

  // Ellipses
  fill(255);
  ellipse(107.33, 94.33, 15, 15);
  ellipse(107.33, 274.59, 15, 15);
  ellipse(129.33, 274.59, 15, 15);
  ellipse(129.33, 229, 15, 15);
  ellipse(141, 215.67, 15, 15);
  ellipse(183, 274.59, 15, 15);
  ellipse(210.67, 274.59, 15, 15);
  ellipse(157.33, 202.33, 15, 15);
  ellipse(203.67, 151.5, 15, 15);
  ellipse(176.67, 151.5, 15, 15);
  ellipse(129.67, 208.67, 15, 15);
  ellipse(129.67, 94.33, 15, 15);
}

// Letter "K" shape 4
void drawLetter4() { 
  float x = random(-5, 5);
  float y = random(-5, 5);
  noTint();
  image(k1, x, y);
}

// Letter "K" shape 5
void drawLetter5(int x) {
  if (x > 1) {
    // Create random numbers between 0 and 1.0
    float r = random(0, 1.0);
    stroke(0);
    strokeWeight(5);
    // 95% chance this will happen
    if (r > 0.05) {
      line(107, 94, 107, 274);
      line(107, 180, 160, 115);
      line(107, 180, 165, 274);
    } 
    // 5% chance this will happen
    } else {
      line(80, 94, 107, 274);
      line(80, 180, 130, 115);
      line(80, 180, 135, 274);
   }
}

// Letter "K" shape 6
void drawLetter6() {
  int offset = 0;
  float easing = 0.05;
  // Display at full opacity
  image(k2, width/2, height/2);
  float dx = (mouseX-k2.width/2) - offset;
  offset += dx * easing; 
  // Display at half opacity
  tint(255, 127);
  image(k2, offset, 0);
}

// Letter "K" shape 7
void drawLetter7() {
  // Var to set back
  int back = 100;
  stroke(0);
  strokeWeight(1);
  line(x[0], y[0], x[1], y[1]);
  line(x[2], y[2], x[3], y[3]);
  line(x[4], y[4], x[5], y[5]);
    x[0]++; // begin in 80px
    y[0]++; // begin in 94px
    x[1]++; // begin in 107px
    y[1]++; // begin in 274px
    x[2]++; // begin in 80px
    y[2]++; // begin in 180px
    x[3]++; // begin in 130px
    y[3]++; // begin in 115px
    x[4]++; // begin in 80px
    y[4]++; // begin in 180px
    x[5]++; // begin in 135px
    y[5]++; // begin in 274px
    // Condition to set back letter k shape
  if (y[1] == 400 && y[5] == 400) {
    x[0] -= back;
    y[0] -= back;
    x[1] -= back;
    y[1] -= back;
    x[2] -= back;
    y[2] -= back;
    x[3] -= back;
    y[3] -= back;
    x[4] -= back;
    y[4] -= back;
    x[5] -= back;
    y[5] -= back;
  }
}

// Letter "K" shape 8
void drawLetter8() {
  int counter1;
  int counter2;
  int counter3;
  fill(255);
  noStroke();
  // Vertical triangles
  for (counter1 = 0; counter1 < 170; counter1 += 3) {
    triangle(89, 125+counter1, 107, 144+counter1, 126, 125+counter1);
    // Right top triangles
    for (counter2 = 62; counter2 > 0; counter2-=3) {
      triangle(169-counter2, 122+counter2, 166-counter2, 148+counter2, 192-counter2, 150+counter2);
      // Right bottom triangles
      for (counter3 = 62; counter3 > 0; counter3 -= 3) {
        triangle(109+counter3, 234+counter3, 108+counter3, 208+counter3, 134+counter3, 207+counter3);
      }
    }
  }
}

void drawLetter9() {
  // Letter "K" shape 8
  // I used translate() function instead of reset all coordinates
  fill(255, 150);
  stroke(0);
  beginShape();
  vertex(107.33, 94.33);
  vertex(107.33, 274.59);
  vertex(129.33, 274.59);
  vertex(129.33, 229);
  vertex(141, 215.67);
  vertex(183, 274.59);
  vertex(210.67, 274.59);
  vertex(157.33, 202.33);
  vertex(203.67, 151.5);
  vertex(176.67, 151.5);
  vertex(129.67, 208.67);
  vertex(129.67, 94.33);
  vertex(107.33, 94.33);
  // Translate() function
  translate(-20, -20);
  endShape();

  beginShape();
  vertex(107.33, 94.33);
  vertex(107.33, 274.59);
  vertex(129.33, 274.59);
  vertex(129.33, 229);
  vertex(141, 215.67);
  vertex(183, 274.59);
  vertex(210.67, 274.59);
  vertex(157.33, 202.33);
  vertex(203.67, 151.5);
  vertex(176.67, 151.5);
  vertex(129.67, 208.67);
  vertex(129.67, 94.33);
  vertex(107.33, 94.33);
  // Translate() function
  translate(20, 20);
  endShape();

  // Lines
  line(107.33, 94.33, 87.33, 74.33);
  line(107.33, 274.59, 87.33, 254.59);
  line(129.33, 274.59, 109.33, 254.59);
  line(129.33, 229, 109.33, 209);
  line(141, 215.67, 121, 195.67);
  line(183, 274.59, 163, 254.59);
  line(210.67, 274.59, 190.67, 254.59);
  line(157.33, 202.33, 137.33, 182.33);
  line(203.67, 151.5, 183.67, 131.5);
  line(176.67, 151.5, 156.67, 131.5);
  line(129.67, 208.67, 109.67, 188.67);
  line(129.67, 94.33, 109.67, 74.33);
}

void drawLetter10(int positionX, int positionY, int sizeX, int sizeY, int repet) {
  // Loop, var repet count how many times run the loop
  for (int i = 0; i < repet; i++) {
    // It works with module operator
    // Image on the top-center position
    if (i % repet == 1) {
      image(k3, positionX+i , positionY, sizeX, sizeY);
    }
    // Image on the left
    else if (i % repet == 3) {
      image(k3, positionX-i-70, positionY+i+50, sizeX, sizeY);
    }
    // Image on the right
    else if (i % repet == 5) {
      image(k3, positionX+i+70, positionY+i+50, sizeX, sizeY);
    }
    // Penultimate image
    else if (i % repet == 7) {
      image(k3, positionX, positionY+i+100, sizeX, sizeY);
    }
    // Image on the bottom position
    else if (i % repet == 9) {
      image(k3, positionX, positionY+i+200, sizeX, sizeY);
    }
  }
}

void drawLetter11() {
  fill(226, 61, 35);
  textSize(300);
  text(letterK1, width/2, 300);
}

void drawLetter12() {
  fill(237, 34, 93);
  textSize(200);
  text(letterK2, width/2, 300);
}

void keyTyped() {
  // if letter q - s is pressed, active the corresponding state
  if (key == 'q' || key == 'Q') {
    state = 1;
  } else if (key == 'w' || key == 'W') {
    state = 2;
  } else if (key == 'e' || key == 'E') {
    state = 3;
  } else if (key == 'r' || key == 'R') {
    state = 4;
  } else if (key == 't' || key == 'T') {
    state = 5;
  } else if (key == 'y' || key == 'Y') {
    state = 6;
  } else if (key == 'u' || key == 'U') {
    state = 7;
  } else if (key == 'i' || key == 'I') {
    state = 8;
  } else if (key == 'o' || key == 'O') {
    state = 9;
  } else if (key == 'p' || key == 'P') {
    state = 10;
  } else if (key == 'a' || key == 'A') {
    state = 11;
  } else if (key == 's' || key  == 'S') {
    state = 12;
  }
}
