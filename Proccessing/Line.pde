class Line {

  //member variables
  float xpos, ypos, strokeW, lineLength, counter;

  //Constructor
  Line(float tempX, float tempY) {
    xpos = tempX;
    ypos = tempY;
    counter = 0;
  }

  //display method
  void display() {
    //clear the board after 400 loops/1600 lines
    counter++;
    if (counter>400) {
      background(random(0, 100), random(0, 100), random(0, 100));
      xpos = random(width);
      ypos = random(height);
      counter = 0;
    }

    //makes the lines in a loop shape: R/D/L/U
    randomization();
    moveRight(xpos, ypos, lineLength);
    randomization();
    moveDown(xpos, ypos, lineLength);
    randomization();
    moveLeft(xpos, ypos, lineLength);
    randomization();
    moveUp(xpos, ypos, lineLength);


    //edge detection: simply teleports the end of the line inside the area
    if (xpos<0) {
      xpos = 20;
    } else if (xpos > width) {
      xpos = width-20;
    }

    if (ypos<0) {
      ypos = 20;
    } else if (ypos > height) {
      ypos = height-20;
    }
  }

  //methods to call
  void randomization() {
    strokeW = random(2, 2);
    strokeWeight(strokeW);
    lineLength = random(1, 50);
    stroke((0), random(100, 255), random(100, 255));
  }

  void moveRight(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX+i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX-i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY-i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY+i;
    }
  }
}
