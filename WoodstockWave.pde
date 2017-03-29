float beginning = PI;
float end = TWO_PI;
float movement = 0;
int size;
color[] colors = {color(65,105,225),
                  color(0,128,0),
                  color(255,255,0),
                  color(255,165,0),
                  color(255,0,0),
                  color(75, 0, 130)
                  
                  
                  
                
              
            };

void setup() {
  size(700,700);
  strokeWeight(25);
  stroke(75, 0, 130);
  noFill();
  
}

void draw() {
  background(0);
  size = 0;
  int colorToUse = 0;
  while (size < 470) 
  {
    stroke(colors[colorToUse % colors.length]);
    colorToUse = colorToUse + 1;
     end = map(sin(movement + size/10), 1, -1, PI, TWO_PI);
    arc(width/2, height/2, size, size, beginning, end);
    size = size + 10;
  }
  movement = movement + PI/40;
}
