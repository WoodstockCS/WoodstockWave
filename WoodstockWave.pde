// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/
// Ethan Earle Woodstock Wave

int x;
float arcEnd = PI;
float arcStart = PI;
float maxArcEnd = TWO_PI;
float speed = PI/300;
float movement = 0.0;
float y=255;
void setup()
{
  size(1000, 1000); 
  background(0, 0, 0);
  noFill();
  stroke(y, y, y);
  strokeWeight(3);
}
void draw()
{
  x=0;
  background(0);
  while (x <=80) {
    int size = x * 10;
    arcEnd = map(sin(movement + (maxArcEnd / 100 * x)), -1, 1, arcStart, maxArcEnd);
    arc(width/2, height/2, size, size, PI, arcEnd);
    x = x + 1;
  }
  movement=movement+speed;
  float y=random(0,255);
  float z=random(0,255);
  float c=random(0,255);
  stroke(y, z , c);
}
