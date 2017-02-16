// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

float arcEnd = PI;
float arcStart = PI;
float maxArcEnd = TWO_PI;
float movement = 0.0;
float speed = PI/60;
float num = 600;


void setup()
{
  size(600, 600);
  noFill();
  background(255);
  strokeWeight(5);
  background(255, 0, 255);
  stroke(0,255,0);
}

void draw()
{
  background(255, 0, 255);
  int x = 5;
  while(x <= 600) {
    arcEnd = map(sin(movement + (maxArcEnd / num * x)), -1, 1, arcStart, maxArcEnd);
    arc(300, 300, x, x, arcStart, arcEnd);
    x = x + 25;
}
movement += speed;
}
