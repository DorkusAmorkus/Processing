
//Lava mylava;

Lava[] bubbles = new Lava [100];
Lava[] bibbles = new Lava [100];

void setup() {
  size(800,400);
  
  //mylava = new Lava(color(255,0,0),30,40,40);
  for(int i = 0; i < bubbles.length; i++){
  bubbles[i] = new Lava(color(random(255),random(255),random(255)),30,40,40);
  bibbles[i] = new Lava(color(random(255),random(255),random(255)),255-i,random(80),random(80));
  }
}

void draw(){
  background(0);
  //mylava.display();
  //mylava.move();
  for (int i = 0; i <bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].move();
    bibbles[i].display();
    bibbles[i].move();
}
}
