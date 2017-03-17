float beginning= PI;
float end=TWO_PI;
float movement=0;
int x=200;


void setup()
{
  size(600, 600);
  stroke(255);
  strokeWeight(5);
  frameRate(100);
  
}

void draw()
{
  stroke(random(255),random(255),random(255));
  x=10;
  background(0);
  noFill();
  while (x<200)
  {
      end=map(sin(movement + (TWO_PI /(x/17))), -1, 1, PI, TWO_PI);
    arc(300, 300, x, x, beginning, end);
    size=size+20;
  }
  movement=movement + PI/60;
}



                                                                                                                                                                                                                 
                                                                                                                                                                                                                 
                                                                                                                                                                                                                 
                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                 
                                                                                                                                                                                                                 
                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                      
