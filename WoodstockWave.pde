float end = TWO_PI;
float movement = 0;
int siz;
int i;

void setup() {
  size(600, 600);
  strokeWeight(4);

}

void draw() {
  background(0);
  stroke(random(255), random(255), random(255) );
  noFill();
  i = 0;
  while (i < 25) {
    siz= i * 22;
    end = map(sin(movement+ (TWO_PI / 25 * i)), -1, 1, PI, TWO_PI);
    arc(width/2, height/2, siz, siz, PI, end);
    i = i + 1;
  }
  movement = movement + PI/60;
}
