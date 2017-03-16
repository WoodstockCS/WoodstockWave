// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

float x = 5;
int i = 900;
float arcStart = PI;
float arcEnd = TWO_PI;
float maxArcEnd =TWO_PI*1;
float movement = 0.0;
float speed = PI/9000;

void setup() {
  size(1000, 1000);
  stroke(17,95,35);
  strokeWeight(1);
  frameRate(60);
};

void draw(){
  noFill();
  background(255);
  x=0;
while(x <= i) {
  //arcEnd = map(sin(movement + (maxArcEnd / i * x)), -1, 1, arcStart, maxArcEnd);
  arc(width/2, height/2, x, x, arcStart, arcEnd);
  x = x + 2.5;
  arcEnd = map(sin(movement + (maxArcEnd / i * x)), -1, 1, arcStart, maxArcEnd);
  movement=movement+speed;
};
};
