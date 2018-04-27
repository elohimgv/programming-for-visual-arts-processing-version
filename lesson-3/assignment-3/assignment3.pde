/**
*
* Author: Elohim Guevara Varela
*
* Assignment 3: Response, "Expressive Eyes"
*
* Introduction to Programming For The Visual Arts with p5.js
* from www.kadenze.com
* The first version was in p5.js, but this is a Processing
* version. To learn more visit: processing.org
*
*/

// Black
int color_1 = 0;
// White
int color_2 = 255;
// Variable to close eyes
boolean closeEyes = true;

void setup() {
  size(1024, 768);
  noSmooth();
}

void draw() {
  //ellipse(pmouseX, pmouseY, 50, 50);
  // Change background color
  if (keyPressed == true) {
    background(86, pmouseX, pmouseY);
  }
  else {
    background(86, 210, 217);
  }
  // RGB - GREEN color for cornea
  float G = map(mouseX, 0, width, 0, 255);
  // RGB - BLUE color for cornea
  float B = map(mouseY, 0, height, 0, 255);

  /* LEFT EYE */

  // "Eyebrow"
  fill(color_1);
  beginShape();
  // Vertex 1
  vertex(485.77, 267.1);
  // Control point 1, 2 and vertex 2
  bezierVertex(495.73, 254.48, 361.14, 220.15, 331.08, 344.29);
  // Control point 3, 4 and vertex 3
  bezierVertex(366.47, 236.75, 474.55, 275.85, 485.77, 267.1);
  endShape();

  // "Retina"
  fill(color_2);
  stroke(color_1);
  strokeWeight(2);
  beginShape();
  // Vertex 1
  vertex(484.67, 332.49);
  // Control point 1, 2 and vertex 2
  bezierVertex(484.67, 332.49, 430, 271.33, 391.67, 359.33);
  // Control point 3, 4 and vertex 3
  bezierVertex(391.67, 359.33, 439.67, 366.32, 484.67, 332.49);
  endShape();

  // "Eyelash"
  strokeWeight(8);
  // Vertex 1, control point 1, 2 and vertex 2
  bezier(486.29, 331.23, 457.33, 308.88, 417.31, 291.22, 389.46, 359.93);

  // "Cornea"
  fill(234, G, B);
  strokeWeight(color_1);
  ellipse(437.69, 328.7, 33, 27.25);

  // "Iris"
  fill(color_1);
  strokeWeight(color_1);
  ellipse(437.82, 327.45, 12.8, 10);

  // "Lights"
  fill(color_2);
  strokeWeight(color_1);
  // Light 1 left
  ellipse(426.92, 326.58, 5.5, 6.3);
  // Light 2 right
  ellipse(442.42, 331.25, 6.5, 8);

  if (closeEyes == false) {
    // "Retina"
    fill(color_1);
    stroke(color_1);
    strokeWeight(2);
    beginShape();
    // Vertex 1
    vertex(484.67, 332.49);
    // Control point 1, 2 and vertex 2
    bezierVertex(484.67, 332.49, 430, 271.33, 391.67, 359.33);
    // Control point 3, 4 and vertex 3
    bezierVertex(391.67, 359.33, 439.67, 366.32, 484.67, 332.49);
    endShape();
  }

  /* RIGHT EYE */

  // "Eyebrow"
  fill(color_1);
  beginShape();
  // Vertex 1
  vertex(616.18, 211.07);
  // Control point 1, 2 and vertex 2
  bezierVertex(555.41, 243.98, 568.35, 253.95, 571.98, 255.27);
  // Control point 3, 4 and vertex 3
  bezierVertex(578.11, 257.5, 591.38, 241.85, 618.04, 220.41);
  // Vertex 4
  vertex(618.04, 220.41);
  // Control point 6, 7 and vertex 5
  bezierVertex(629.1, 211.52, 650.57, 215.58, 656.33, 240.02);
  // Control point 7, 8 and vertex 6
  bezierVertex(652.84, 214.23, 633.17, 201.87, 616.18, 211.07);
  endShape();

  // "Retina"
  fill(color_2);
  stroke(color_1);
  strokeWeight(2);
  beginShape();
  // Vertex 1
  vertex(586.8, 314.46);
  // Control point 1, 2 and vertex 2
  bezierVertex(598.27, 266.58, 654.33, 266.09, 628.17, 266.04);
  // Control point 3, 4 and vertex 3
  bezierVertex(654.33, 266.09, 653.99, 297.93, 656.33, 293.63);
  // Vertex 4
  vertex(656.33, 293.63);
  // Control point 4, 5 and vertex 5
  bezierVertex(656.33, 293.63, 653.99, 297.93, 620.84, 303.99);
  // Control point 5, 6 and vertex 6
  bezierVertex(620.84, 303.99, 612.35, 301.98, 620.84, 303.99);
  // Vertex 7
  vertex(620.84, 303.99);
  // Control point 6, 7 and vertex 8
  bezierVertex(628.97, 307.16, 612.32, 300.67, 586.8, 314.46);
  // Control point 7, 8 and vertex 9
  bezierVertex(586.8, 314.46, 586.8, 314.46, 586.8, 314.46);
  endShape();

  // "Cornea"
  fill(234, G, B);
  strokeWeight(color_1);
  beginShape();
  // Vertex 1
  vertex(607.75, 279.84);
  // Control point 1, 2, vertex 2
  bezierVertex(608.88, 287.45, 615.69, 295.34, 624.91, 295.34);
  // Vertex 3
  vertex(624.91, 295.34);
  // Control point 3, 4, vertex 4
  bezierVertex(632.85, 293.63, 638.58, 287.45, 637.45, 279.84);
  // Vertex 5
  vertex(637.45, 279.84);
  // Control point 4, 5, vertex 6
  bezierVertex(636.31, 272.22, 629.5, 264.33, 620.54, 266.04);
  // Vertex 7
  vertex(620.54, 266.04);
  // Control point 6, 7, vertex 8
  bezierVertex(612.34, 266.04, 606.61, 272.22, 607.75, 279.84);
  endShape();

  // "Iris"
  fill(color_1);
  strokeWeight(color_1);
  ellipse(623.56, 282.84, 11.33, 10);

  // "Lights"
  fill(color_2);
  strokeWeight(color_1);
  // Light 1 left
  ellipse(616.1, 279.64, 4.5, 4.16);
  // Light 2 right
  ellipse(625.24, 287.36 ,8.5, 7.5);

  // "Eyelash"
  noFill();
  strokeWeight(9);
  // Vertex 1, control point 1, 2 and vertex 2
  bezier(584, 313.17, 597.33, 265.75, 654.15, 260, 625.24, 264.33);
  // Vertex 3, control point 2, 3 and vertex 4
  bezier(625.24, 264.33, 654.15, 260, 658, 293.63, 658, 293.63);

  if (closeEyes == false) {
    fill(color_1);
    stroke(color_1);
    strokeWeight(2);
    beginShape();
    // Vertex 1
    vertex(586.8, 314.46);
    // Control point 1, 2 and vertex 2
    bezierVertex(598.27, 266.58, 654.33, 266.09, 628.17, 266.04);
    // Control point 3, 4 and vertex 3
    bezierVertex(654.33, 266.09, 653.99, 297.93, 656.33, 293.63);
    // Vertex 4
    vertex(656.33, 293.63);
    // Control point 4, 5 and vertex 5
    bezierVertex(656.33, 293.63, 653.99, 297.93, 620.84, 303.99);
    // Control point 5, 6 and vertex 6
    bezierVertex(620.84, 303.99, 612.35, 301.98, 620.84, 303.99);
    // Vertex 7
    vertex(620.84, 303.99);
    // Control point 6, 7 and vertex 8
    bezierVertex(628.97, 307.16, 612.32, 300.67, 586.8, 314.46);
    // Control point 7, 8 and vertex 9
    bezierVertex(586.8, 314.46, 586.8, 314.46, 586.8, 314.46);
    endShape();
  }
}

void mousePressed() {
  closeEyes = !closeEyes;
}
