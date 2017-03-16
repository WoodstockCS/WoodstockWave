//Justin Kopf
// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/
int count;
float arcEnd=PI;
float arcStart=PI;
int sz=200;
float maxArcEnd=TWO_PI;
float movement=0.0;
float speed=PI/60;
 
void setup()
{
  size(1000, 600);
  noFill();
  strokeWeight(50);
}
void draw()
{



  count=0;
  background(0);
stroke(255);
  while (count<100) {
    sz=count*10;
    arcEnd = map(sin(movement + (maxArcEnd / 300* count)), -1, 1, arcStart, maxArcEnd);
    arc(width/2, 500, sz, sz, PI, arcEnd);
    count=count+1;

  }
  movement=movement+speed;
}
