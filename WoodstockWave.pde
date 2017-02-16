// based on https://www.openprocessing.org/sketch/152169
// https://creativecommons.org/licenses/by-sa/3.0/

float move=.0;
float spd=PI/960;
float arcE=TWO_PI;
float i=.05;
int x = 5;
float arc = TWO_PI;
float arcS = PI;
int num=200;
void setup(){
  size(400, 400);
  frameRate(60);
}
void draw(){
  noFill();
  background(255);
  x=0;
  while(x <= num) {
    arc(width/2, height/2, x, x,arcS,arc);
    x = x + 10;
    arc = map(sin(move + (arcE / num * x)), -1, 1, arcS, arcE);
    move=move+spd;

  }
  arc=arc-i;
  if (arc<3){
    i=-.05;
  }
  if (arc>TWO_PI){
    i=.05;
  }
}
