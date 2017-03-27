// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/
//done in colaberation with Mr. Smith

float end = TWO_PI;
float movement = 0;
int sz;
int i;
void setup()
{
  size(600, 600);
  stroke(0);
  strokeWeight(8);
}

void draw()
{
  background(255);
  noFill();
  i = 0;
  while (i < 25)
  {
    size = i * 22;
    end = map(sin(movement + (TWO_PI / 25 * i)), -1, 1, PI, TWO_PI);
    arc(width/2, height/2, sz, sz, PI, end);
    i = i + 1;
  }
  movement = movement + PI/60;
}
