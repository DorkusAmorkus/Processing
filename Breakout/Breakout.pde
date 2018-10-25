
void setup() {
  minim = new Minim(this);
  sound = minim.loadFile("Wilhelm-Scream.mp3");
  int i;
  size(500,400);
 fill(random(255),random(255),random(255));
  rectMode(CENTER);
  score = 0;
  level = 1;
  // All blocks exist
  for (i=0; i<20; i++) {
      blocks[i] = 1;
    }
  reset();
}

void reset() {
  sound.rewind();
   int i;
   fill(random(255),random(255),random(255));
  ballx = 250 + int(random(-80,80));
  bally = 350;
  speedX = 3;
  speedY = -3;
  score = 0;
  level = 1;
  for (i=0; i<20; i++) {
        blocks[i] = 1;
      }
    }


void draw() { 
  
  //Pressing R resets stage
  if ((keyPressed == true) && ((key == 'r') || (key == 'R'))) {
       reset();
  }
  background(0);
  
  
  //ball
  
  ellipse(ballx, bally, 10, 10);
  
  //paddle
  rect(mouseX, paddleY, rectHalf*2+1, 10);
  
  
  //if ball goes below paddle, game over!
  if (bally > height) {
    sound.play();
    textSize(40);
    textAlign(CENTER);
    text("Game Over!", 250, 250);
    textSize(20);
    text("Press R to Restart", 250, 300);
  }
  
  if (blocksGone==1 && time<200) {
    textSize(40);
    textAlign(CENTER);
    text("Level Cleared!", 250, 210);
    textSize(30);
    text("Preparing Next Level...", 250, 290);
    ballx = 250;
    bally = 350;
    speedX = 0;
    speedY = 0;
    time++;
    if (time==200) {
      time = 0;
      ballx = 250 + int(random(-80,80));;
      bally = 350;
      speedX = 3+level;
      speedY = -3-level;
      paddleX = 250;
      level++;
      // All blocks exist
      for (i=0; i<20; i++) {
        blocks[i] = 1;
      }
    }
  }

  ballx += speedX;
  bally += speedY;

  // if ball hits movable bar, invert Y direction
  if ( bally > height-30 && bally < height-10 && ballx > mouseX-rectHalf && ballx < mouseX+rectHalf ) {
    speedY = speedY * -1;
  }
  
  //If ball hits left, change direction of speedX   
  if ( ballx > width) {
    speedX *= -1;
  }
  //If ball hits right, change direction of speedX
  if (ballx < 0 ) {
    speedX *= -1;
  }
  //if ball hits top, reverses y direction
  if (bally < 0 ) {
    speedY *= -1;
  }
  
  blocksGone = 1;
  //the blocks are all gone, but if we have a block, then blocksGone is zero
  for (i=0; i<20; i++) {
    // Calculate the x,y position of upper right corner
    blockX = i%5*100+10; // used to split blocks into equal rows of 5. 
    //Counts blocks (0,1,2,3,4) and every time it hits 4, it moves down by... (see below)
    
    blockY = 40*(i/5)+10; //this creates the gap between each block in the column
    
    // Check if we have a block 
    if (blocks[i]==1) { 
      
      // Draws the block
      
      rect(blockX+40, blockY+10, 80, 20);
      
      
      // Since we drew a block, all are not gone
      blocksGone = 0;
    }
    //if ball hits block from top or bottom, it's removed
    // if block is destroyed, ball bounces
    if (ballx>(blockX+4) && ballx<(blockX+76) &&
      bally>blockY && bally<(blockY+20) && blocks[i]==1) { 
      blocks[i]=0;
      speedX = -speedX;
      score = score + 5;
    }
    // if block is hit on side, it's removed
    if (((ballx>(blockX-5) && ballx<blockX) || (ballx>(blockX+80) && ballx<(blockX+85))) &&
      bally>blockY && bally<(blockY+20) && blocks[i]==1) { 
      blocks[i]=0;
      speedX = -speedX;
      score = score + 5;
    }
    // if block is hit on other side, it's removed
    if (((ballx>(blockX-1) && ballx<(blockX+5)) || (ballx>(blockX+75) && ballx<(blockX+81))) &&
      bally>blockY && bally<(blockY+20) && blocks[i]==1) { 
      blocks[i]=0;
      speedX = -speedX;
      speedY = -speedY;
      score = score + 5;
    }
   
  
  textSize(16);
  textAlign(RIGHT);
  text("Score", 80, 390);
  textAlign(LEFT);
  text(score, 90, 390);
  // Display level
  textAlign(RIGHT);
  text("Level", 450, 390);
  textAlign(LEFT);
  text(level, 460, 390);
 
}

}
