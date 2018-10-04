
void setup()
{
  size(200, 200);
  background(0);
  smooth();
  fill(color(255,255,0));
  noStroke();   //sets up properties (not size or coordinates) of Pac-man
  
  translate(50,100);                       
  rotate(QUARTER_PI);                      //rotates Pac-Man 45 degrees to the right
  arc(0, 0, 90, 90, 0, PI+HALF_PI, PIE);   //<--original non-rotated Pac Man 
}

void draw(){                    //draws the pellets
ellipse(70, 100, 10, 10);
ellipse(90, 100, 10, 10);
ellipse(110, 100, 10, 10);
fill(255);
}      
