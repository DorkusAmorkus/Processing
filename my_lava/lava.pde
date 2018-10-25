class Lava{
  color c;
  float ypos;
  float xscale;
  float yscale;
  
  float rspeed = random(5);
  float rxpos = random(width);
  
  
  
  
  Lava(color tempColor, float tempYpos, float tempXscale, float tempYscale){
  
    c = tempColor;
    ypos = tempYpos;
    xscale = tempXscale;
    yscale = tempYscale;
  }
  
  
  
  void display() {
    strokeWeight(2);
    fill(c);
    ellipse(rxpos,ypos,xscale,yscale);
  }
  
  void move() {
    ypos = ypos + rspeed;
    rxpos = rxpos + random(-3,3);
    
    if(ypos >= height){
      ypos = -230;
    
  }
}
}
