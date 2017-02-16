float arcStart=PI;
float arcEnd=HALF_PI;
float maxArcEnd=TWO_PI;
float movement=0;
float speed=PI/10000;
float num=800;
void setup()
{
  strokeWeight(7);
  size(1000, 1000);
}
void draw()
{
  background(155);
  int x = 1;
  noFill();
  while(x <= 1000){ 
    arcEnd = map(sin(movement + (maxArcEnd / num * x)), -1, 1, arcStart, maxArcEnd);
    arc(500, 500, x, x, arcStart, arcEnd);
    x = x + 10;
    movement+=speed;
    arcEnd=arcEnd+.05;
  }
}

