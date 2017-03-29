float begining = PI;
float end = TWO_PI;
float movement = 0;
int tall = 300;

void setup()
{
  size(600, 600);
  stroke(255);
  strokeWeight(5);
}
void draw()
{
  background(37,85,33);
  noFill();
  tall = 90;
  end = map(sin(movement + (TWO_PI / 10)), -1, 1, PI, TWO_PI);
  while (tall < 500)
  {
    end = map(sin(movement + (TWO_PI / (size/30))), -1, 1, PI, TWO_PI);
    arc(width/2, height/2, tall, tall, begining, end);
    tall = tall + 20;
  }

  movement = movement + PI/60;
}
