float gGrid = 50;
Player player;
Turtle [] turtles;

void setup() {
  size(450,500);
  player = new Player();
  turtles = new Turtle[5];
  for (int i=0; i<5; i++) {
    turtles[i] = new Turtle(i);
  }
}

void draw() {
  background(200);
  
  //player.move();
  player.draw();
  player.drawCache();
  
    for (int i=0; i<5; i++) {
    turtles[i].draw();
  }
  
  
  
  

}

void keyPressed() {
    switch (keyCode) {
      
      case(LEFT):
        player.move(-1);
        break;
      case(RIGHT):
        player.move(+1);
        break;
    }
}