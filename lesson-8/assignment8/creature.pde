class Creature {
  int count;
  int[] bigCircle = new int[3];  
  float[] leftLeg = new float[3];
  float[] rightLeg = new float[3];
  float[] leftArm = new float[3];
  float[] rightArm = new float[3];
  int[] head = new int[3];
  int[] leftEye = new int[4];
  int[] rightEye = new int[4];
  int[] mouth = new int[14];
  float[] angularMove = new float[6];
  int speed;
  
  // Constructor
  Creature(int c, int pbcx, int pbcy, int dbc, float pllx, float plly, float dll, float prlx, float prly, float drl, float plax, float play, 
          float dla, float prax, float pray, float dra, int phx, int phy, int dh, int plex1, int pley1, int plex2, int pley2, int prex1, 
          int prey1, int prex2, int prey2, int pmx1, int pmy1, int pmx2, int pmy2, int pmx3, int pmy3, int pmx4, int pmy4, int pmx5, 
          int pmy5, int pmx6, int pmy6, int pmx7, int pmy7, int a, int oll, int orl, int ola, int ora, int sca, int spe) {
            
  // FIELDS FOR RENDER METHOD
  count = c; 
  // Fields for big circle
  bigCircle[0] = pbcx;
  bigCircle[1] = pbcy;
  bigCircle[2] = dbc;
  // Fields for left leg
  leftLeg[0] = pllx;
  leftLeg[1] = plly;
  leftLeg[2] = dll;
  // Fields for right leg
  rightLeg[0] = prlx;
  rightLeg[1] = prly;
  rightLeg[2] = drl;
  // Fields for left arm
  leftArm[0] = plax;
  leftArm[1] = play;
  leftArm[2] = dla;
  // Fields for right arm
  rightArm[0] = prax;
  rightArm[1] = pray;
  rightArm[2] = dra;
  // Fields for head
  head[0] = phx;
  head[1] = phy;
  head[2] = dh;
  // Fields for left eye
  leftEye[0] = plex1;
  leftEye[1] = pley1;
  leftEye[2] = plex2;
  leftEye[3] = pley2;
  // fields for right eye
  rightEye[0] = prex1;
  rightEye[1] = prey1;
  rightEye[2] = prex2;
  rightEye[3] = prey2;
  // fields for mouth
  mouth[0] = pmx1;
  mouth[1] = pmy1;
  mouth[2] = pmx2;
  mouth[3] = pmy2;
  mouth[4] = pmx3;
  mouth[5] = pmy3;
  mouth[6] = pmx4;
  mouth[7] = pmy4;
  mouth[8] = pmx5;
  mouth[9] = pmy5;
  mouth[10] = pmx6;
  mouth[11] = pmy6;
  mouth[12] = pmx7;
  mouth[13] = pmy7;
  // FIELDS TO CONTROL MOVE OF LEGS AND ARMS
  angularMove[0] = a;
  // x move of the ellipses
  angularMove[1] = oll; // Left leg
  angularMove[2] = orl; // Right leg
  angularMove[3] = ola; // Left arm
  angularMove[4] = ora; // Right arm
  // Amplitud of the wave
  angularMove[5] = sca;
  // Speed of move
  speed = spe;
  }
  
  // RENDER METHOD
  void render() {
    // Big circle
    ellipse(bigCircle[0], bigCircle[1],bigCircle[2],bigCircle[2]);
    // LEGS
    // Left leg
    for (int i = 0; i < count; i++) {
      leftLeg[0] = angularMove[1] + (sin(angularMove[0] + i) * angularMove[5]);
      // Draw ellipses
      ellipse(leftLeg[0] - i + 2, leftLeg[1] + i * 11, leftLeg[2] - i * 2, leftLeg[2] - i * 2);
      // Right leg
      for (int j = 0; j < count; j++) {
        rightLeg[0] = angularMove[2] + (sin(angularMove[0] + j) * angularMove[5]);
        // Draw ellipses
        ellipse(rightLeg[0] + j + 2, rightLeg[1] + j * 11, rightLeg[2] - j * 2, rightLeg[2] - j * 2);
        // ARMS 
        // Left arm
        for (int k = 0; k < count; k++) {
          leftArm[1] = angularMove[3] + (sin(angularMove[0] + k) * angularMove[5]);
          // Draw ellipses
          ellipse(leftArm[0] - k * 9, leftArm[1], leftArm[2] - k, leftArm[2] - k);
          // Right arm
          for (int l = 0; l < count; l++) {
            rightArm[1] = angularMove[4] + (sin(angularMove[0] + l) * angularMove[5]);
            // Draw ellipses
            ellipse(rightArm[0] + l * 9, rightArm[1], rightArm[2] - l, rightArm[2] - l);
          }
        }
      }
    }
    angularMove[0] += speed;
    // HEAD
    ellipse(head[0], head[1], head[2], head[2]);
    // EYES
    // Left eye
    line(leftEye[0], leftEye[1], leftEye[2], leftEye[3]);
    // Right eye
    line(rightEye[0], rightEye[1], rightEye[2], rightEye[3]);
    // MOUTH
    line(mouth[0], mouth[1], mouth[2], mouth[3]);
    line(mouth[2], mouth[3], mouth[4], mouth[5]);
    line(mouth[4], mouth[5], mouth[6], mouth[7]);
    line(mouth[6], mouth[7], mouth[8], mouth[9]);
    line(mouth[8], mouth[9], mouth[10], mouth[11]);
    line(mouth[10], mouth[11], mouth[12], mouth[13]);
}
  
  // EXPLOTION METHOD
  void explotion() {
    // LEGS
    // Left leg
    for (int i = 0; i < count; i++) {
      // To a constant to return the same pseudo-random numbers
      randomSeed(2);
      // Draw ellipses
      ellipse(random(angularMove[1] - i + 2), random(leftLeg[1] + i * 11), leftLeg[2] - i * 2, leftLeg[2] - i * 2);
      // Right leg
      for (int j = 0; j < count; j++) {
        // To a constant to return the same pseudo-random numbers
        randomSeed(2);
        // Draw ellipses
        ellipse(random(angularMove[2] + j + 2), random(rightLeg[1] + j * 11), rightLeg[2] - j * 2, rightLeg[2] - j * 2);
        // ARMS
        // Left arm
        for (int k = 0; k < count; k++) {
          // Draw ellipses
          ellipse(random(leftArm[0] - k * 9), random(angularMove[3]), leftArm[2] - k, leftArm[2] - k);
          // Right arm
          for (int l = 0; l < count; l++) {
            // Draw ellipses
            ellipse(random(rightArm[0] + l * 9), random(angularMove[4]), rightArm[2] - l, rightArm[2] - l);
          }
        }
      }
    }
  }
}


  

  
