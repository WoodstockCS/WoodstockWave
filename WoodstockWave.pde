// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

// Patrick Bald
// Woodstock Wave


float maxArcEnd = PI*3;
float speed = PI/1000; //SPEED
float movement = 0;
int num = 30; //sets number of arcs
int i = 20; 
float arcStart = PI;
float arcEnd = TWO_PI;
float color1 = 0;
float color2 = 102;
float color3 = 227;
float colorChange = 1;
float colorChange2 = 1;
float colorChange3 = 1;

void setup() {
  size(1000, 1000);
  stroke(color1, color2, color3);
  strokeWeight(2);
  noFill();
  //noLoop();
}

void draw() {
  int x = 0;
  background(255);
  if (mousePressed == true) {
    color1 += colorChange;
    if (color1 >255) {
      colorChange = -10;
    }
    if (color1 <0) {
      colorChange = 10;
    }
    color2 += colorChange2;
    if (color2 >255) {
      colorChange2 = -15;
    }
    if (color2 <0) {
      colorChange2 = 15;
    }
    color3 += colorChange3;
    if (color3 >255) {
      colorChange3 = -10;
    }
    if (color3 <0) {
      colorChange3 = 10;
    }
  }

  stroke(color1, color2, color3);

  while (x <= num) {
    i = x*20; // increases space between arcs
    arcEnd = map(sin(movement + (maxArcEnd / num * x)), -1, 1, arcStart, maxArcEnd);
    arc(mouseX, mouseY, i, i, arcStart, arcEnd);
    x = x + 1;
    movement += speed;
  }
}
