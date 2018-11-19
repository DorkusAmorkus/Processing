/* Code Credit goes to:


*/ 
boolean right1 = true;  
boolean up1 = false;
boolean down1 = false;
boolean left1 = false;
boolean right2 = false;  
boolean up2 = false;
boolean down2 = false;
boolean left2 = true;
boolean GoodGame=false;
int p1X=50;
int p1Y=300;
int p2X=550;
int p2Y=300;
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
    right1 = true;  
    up1 = false;
    down1 = false;
    left1 = false;
    right2 = false;  
    up2 = false;
    down2 = false;
    left2 = true;
    p2X=550;
    p2Y=300;
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

  if (right1==true){
    p1X=p1X+1;
  }
  else{
    if (left1==true) {
      p1X--;
    }
    if (up1==true){
      p1Y=p1Y-1;
    }
    if (down1==true){
      p1Y=p1Y+1;
    }
  }
}

void p2func(){
  if (get(p2X, p2Y) != color(0, 0, 0))
  {
    GoodGame=true;
    p1score = p1score+1;
  }
  stroke(255,0,255); //put P2 favorite color here
  point(p2X, p2Y);

  if (right2==true){
    p1X++;
  }
  else{
    if (left2==true){
      p2X--;
    }
    if (up2==true){
      p2Y--;
    }
    if (down2==true){
      p2Y++;
    }
  }
}




void keyPressed(){
  if(keyCode == '6'){
    reset();
  }
   if (keyCode =='W' && down1 != true ){
       right1 = false;
        left1 = false;
        up1 = true;
        down1 = false;
    }
    if (keyCode == 'S'  && up1 != true){
        right1 = false;
        left1 = false;
        up1 = false;
        down1 = true;
    }
    if (keyCode == 'A' && right1 != true){
        right1 = false;
        left1 = true;
        up1 = false;
        down1 = false;
    }
    
    if (keyCode == 'D' && left1 != true){
        right1 = true;
        left1 = false;
        up1 = false;
        down1 = false;
      }
      
    if (keyCode == UP && down2 != true ){
       right2 = false;
        left2 = false;
        up2 = true;
        down2 = false;
    }
    if (keyCode == DOWN  && up2 != true){
        right2 = false;
        left2 = false;
        up2 = false;
        down2 = true;
    }
    if (keyCode == LEFT && right2 != true){
        right2 = false;
        left2 = true;
        up2 = false;
        down2 = false;
    }
    
    if (keyCode == RIGHT && left2 != true){
        right2 = true;
        left2 = false;
        up2 = false;
        down2 = false;
      }
  }

void win() {
  if (p1score==4){
    textSize(20);
    textAlign(CENTER);
    text("Good Game! Player 1 Wins!", 300,280);
    text("Press '6' to Reset", 300,320);
    p1X=50;
    p1Y=300;
    right1 = false;  
    up1 = false;
    down1 = false;
    left1 = false;
    right2 = false;  
    up2 = false;
    down2 = false;
    left2 = false;
    p2X=550;
    p2Y=300;
  }
  if (p2score==4){
    textSize(20);
    textAlign(CENTER);
    text("Good Game! Player 2 Wins!", 300,280);
    text("Press '6' to Reset", 300,320);
     p1X=50;
    p1Y=300;
    right1 = false;  
    up1 = false;
    down1 = false;
    left1 = false;
    right2 = false;  
    up2 = false;
    down2 = false;
    left2 = false;
    p2X=550;
    p2Y=300;
  }
}

void reset() {
  round = 1;
    background(0);
    p1X=50;
    p1Y=300;
    right1 = true;  
    up1 = false;
    down1 = false;
    left1 = false;
    right2 = false;  
    up2 = false;
    down2 = false;
    left2 = true;
    p2X=550;
    p2Y=300;
    GoodGame=false;
    p1score = 0;
    p2score = 0;
}
