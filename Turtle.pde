class Turtle {
  
 float Grid = gGrid;
 Fish fish;
  
 int pos;
 boolean diving;
 int fishDepth; 
 
 Turtle (int pos_) {
   pos = pos_;
   diving = false;
   fish = new Fish (pos);
 }
  
  void draw () {
    checkDive();
    if (diving) {
      fill (#ff0000);
      fish.reset();
      if (player.pos == pos+1) {
        player.drown();
      }
      diving = false;
    } else {
      fill (#00ff00);
    }
    rect (Grid * (pos + 2), Grid * 5, Grid, Grid);
  //  fish.update();
    fish.draw();
  }
  
  void unsetDiving () {
    diving = false; 
    fish.reset();
  }
  
  void checkDive () {
    if (fish.depth < 0) {
      diving = true;
      //fish.reset();
    }
  }
}