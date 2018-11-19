/* Code Credit goes to:


*/ 
boolean GoodGame=false;
int p1X=50;
int p1Y=300;
int p1Go=RIGHT;
int p2X=550;
int p2Y=300;
int p2Go=LEFT;
int p1score = 0;
int p2score = 0;
int round = 1;


void setup(){
  size(600, 600);
  background(0);  
}

void draw(){
    win();
  textSize(16);
  textAlign(LEFT);
  text("Player 1 Score:", 20, 20);
  textAlign(RIGHT);
  text(p1score, 160, 20);
  textAlign(RIGHT);
  text("Player 2 Score:", 560, 20);
  textAlign(LEFT);
  text(p2score, 580, 20);
  textAlign(LEFT);
  text("Round", 250, 20);
  textAlign(RIGHT);
  text(round, 320,20);
  
  stroke(0, 255, 255);
  if (GoodGame==true){
    round = round+1;
    background(0);
    p1X=50;
    p1Y=300;
    p1Go=RIGHT;
    p2X=550;
    p2Y=300;
    p2Go=LEFT;
    GoodGame=false;
  }
    
  else
  {
    p1func();
    if (GoodGame==false){    
      p2func();
    }
  }
}
void p1func()
{
  if (get(p1X, p1Y) != color(0, 0, 0)){
    p2score = p2score+1;
    GoodGame=true;
  }
  stroke(27, 217, 222); //put P1 favorite color here
  point(p1X, p1Y);

  if (p1Go==RIGHT){
    p1X++;
  }
  else{
    if (p1Go==LEFT) {
      p1X--;
    }
    if (p1Go==UP){
      p1Y=p1Y-1;
    }
    if (p1Go==DOWN){
      p1Y=p1Y+1;
    }
  }
}

void p2func()
{
  if (get(p2X, p2Y) != color(0, 0, 0))
  {
    GoodGame=true;
    p1score = p1score+1;
  }
  stroke(255,0,255); //put P2 favorite color here
  point(p2X, p2Y);

  if (p2Go==RIGHT){
    p2X++;
  }
  else{
    if (p2Go==LEFT){
      p2X--;
    }
    if (p2Go==UP){
      p2Y--;
    }
    if (p2Go==DOWN){
      p2Y++;
    }
  }
}

void keyPressed(){
  if (key=='a'){
    p1Go=LEFT;
  }
  else if (key=='d') {
    p1Go=RIGHT;
  }
  else if (key=='w') {
    p1Go=UP;
  }
  else if (key =='s') {
    p1Go=DOWN;
  }
  if (keyCode == LEFT){
    p2Go=LEFT;
  }
  else if (keyCode == LEFT){
    p2Go=RIGHT;
  }
  else if (keyCode == UP){
    p2Go=UP;
  }
  else if (keyCode == DOWN){
    p2Go=DOWN;
  }
}

void win() {
   if(p1score = 4) {
    textAlign(CENTER);
    text("GOOD GAME! PLAYER 1 WINS!!", 60, 300);
    text("Press Space to Restart", 110, 300);
  }
  if(p2score = 4) {
    textAlign(CENTER);
    text("GOOD GAME! PLAYER 2 WINS!!", 30, 300);
    text("Press Space to Restart", 110, 300);
  }
}
