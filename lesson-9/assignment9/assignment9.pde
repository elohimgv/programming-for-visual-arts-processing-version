/**
*
* Author: Elohim Guevara
*
* Assignment 9: Data
*
*/

// Declared objects
Table table;
PFont font;

String decil;

// To work with columns
int numColumns;
// Total rows in table
int numRows;
// Array of floats
float[][] decilValues;
// Array of strings
String[] textID;
// Array of strings
String[] year;

void setup() {
  // Set up canvas size
  size(displayWidth, displayHeight);
  // Initialized  object table
  table = loadTable("data/Ingreso_corriente_total_per_capita_nacional_2016_2018.csv", "header");
  
  // Initialized 
  numColumns = table.getColumnCount();
  numRows = table.getRowCount();
  decilValues = new float[numRows][numColumns-1];
  textID = new String[numRows];
  year = new String[numRows];
 
  // Load font
  font = loadFont("SourceCodePro-Regular-48.vlw");
  // Set font
  textFont(font);
  
  // Iterate to add values to textID[] array
  for (int i = 0; i < textID.length; i++) {  
    textID[i] = table.getString(i, "indicadores_1_2_17");
  }
  
  // Iterate to add values to year[] array
  for (int i = 0; i < year.length; i++) {  
    year[i] = table.getString(i, "anio");
  }
  
   // Iterate to add values to decilValues[] array
  for (int col = 1; col < decilValues[0].length; col++) {  
    for (int row = 0; row < decilValues.length; row++) { 
      decilValues[row][col] = table.getFloat(row, col); 
      println(row + " " +decilValues[row][col]);
    } 
  }
}

// To display on sketch
void draw() {
  background(31, 29, 29);
  
  // Indicators
  int ordinalNumber;
  for (int i = 0; i < textID.length; i++) {
    ordinalNumber = i;
    if (ordinalNumber >= textID.length/2) {
      ordinalNumber = ordinalNumber -= textID.length/2;
    }
    fill(255);
    textSize(15);
    text((ordinalNumber+1) + " " + textID[i], width*0.05, (i+3.5)*30);
  }
  
  // Deciles
  float threshold;
  for (int col = 1; col < decilValues[0].length; col++) {
    for (int row = 0; row < decilValues.length; row++) { 
      threshold = map(decilValues[row][col], 10.0, 40000.0, 10.0, height/3);
      float offset = col*0.053;
      float x = width*(0.3+offset);
      float y = (row+3.35)*30;
      float size = threshold;
      if ((mouseX > x-(size/2) && mouseX <= x+(size/2.2)) 
          && (mouseY > y-(size/2) && mouseY <= y+(size/2.2))) {
        fill(255, 0, 0); //<>//
        switch (col) {
          case 1:
          decil = "decil_i";
          break;
          case 2:
          decil = "decil_ii";
          break;
          case 3:
          decil = "decil_iii";
          break;
          case 4:
          decil = "decil_iv";
          break;
          case 5:
          decil = "decil_v";
          break;
          case 6:
          decil = "decil_vi";
          break;
          case 7:
          decil = "decil_vii";
          break;
          case 8:
          decil = "decil_viii";
          break;
          case 9:
          decil = "decil_ix";
          break; //<>//
          case 10:
          decil = "decil_x";
          break;
        }
        textSize(20);
        text(decil + " " + decilValues[row][col], width*0.79, height*0.95);
      } else {
        fill(255, 150);
      }
      ellipse(x, y, size, size);
     }
   } 
   
   // Years 
   for (int i = 0; i < year.length; i++) {
     fill(255);
     textSize(15);
     text(year[i], width*0.9, (i+3.5)*30);
   }
}
