
void setup() {
  size(800,600);
  fill(255,0,0);
  
  reset();
}

void reset() {
  x = width/2;
  y = height/2;
  speedX = 4;
  speedY = 4;
  
  score();
}

void draw() { 
  background(0);
  
  ellipse(x, y, 15, 15);

  rect(0, 0, 20, height);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);

  x += speedX;
  y += speedY;

  // if ball hits movable bar, invert X direction
  if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = speedX * -1;
  } 

  // if ball hits left wall, speed increases by 10%
  if (x < 25) {
    speedX *= -1.1;
    speedY *= 1.1;
    x += speedX;
  }

  //If ball hits top, change direction of speedY   
  if ( y > height) {
    speedY *= -1;
  }
  //If ball hits bottom, change direction of speedY
  if (y < 0 ) {
    speedY *= -1;
  }
  
  //Pressing R resets stage
  if ((keyPressed == true) && ((key == 'r') || (key == 'R'))) {
       reset();
  }
   
