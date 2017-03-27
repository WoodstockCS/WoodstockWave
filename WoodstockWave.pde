float end = TWO_PI;
float movement = 0;
int size;
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
    size= i * 22;
    end = map(sin(movement+ (TWO_PI / 25 * i)), -1, 1, PI, TWO_PI);
    arc(width/2, height/2, size, size, PI, end);
    i = i + 1;
  }
  movement = movement + PI/60;
}
