
import ddf.minim.* ;
Minim minim;
AudioPlayer sound;  

int i, blockX, blockY;
  int blocksGone;


int ballx = 250 + int(random(-80,80));
int bally = 350;
int speedX = 3;
int speedY = -3;
int[] blocks = new int[20];


int paddleX = 250;
int paddleY = 370;
int rectHalf = 40;

int score = 0;
int level = 1;
int time = 0;
