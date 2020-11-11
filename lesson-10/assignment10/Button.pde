class Button {
 float pos_x, pos_y;      // The x- and y-coordinate
 float w;                 // width
 float h;                 // height
 color baseGray;          // Default gray value
 color overGray;          // Value when mouse is over the button
 color pressGray;         // Value when mouse is over and pressed
 boolean over = false;    // True when the mouse is over
 boolean pressed = false; // True when the mouse is over and pressed
 
 Button(float xp, float yp, float sw, float sh, color b, color o, color p) {
   pos_x = xp;
   pos_y = yp;
   w = sw;
   h = sh;
   baseGray = b;
   overGray = o;
   pressGray = p;
 }
 
 // Update the over field every frame
 void update() {
   if ((mouseX >= pos_x) && (mouseX <= pos_x+w) &&
       (mouseY >= pos_y) && (mouseY <= pos_y+h)) {
     over = true;
   } else {
     over = false;
   }
 }
 
 // Respond to mousePressed() event
 boolean press() {
   if (over == true) {
     pressed = true;
     return true;
   } else { 
     return false; 
   }
 }
 
 // Respond to mouseReleased() event
 void release() {
   pressed = false; // Set to false when the mouse is released 
 }
 
 void display() {
   if (pressed == true) {
     fill(pressGray);
   } else if (over == true) {
     fill(overGray); 
   } else {
     fill(baseGray); 
   }
   stroke(255);
   rect(pos_x, pos_y, w, h);
 }
}
