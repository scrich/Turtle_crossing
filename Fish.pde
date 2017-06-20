class Fish {
  
 float Grid = gGrid;
  
 int pos;
 float depth; 
 float speed;
 
 Fish (int pos_) {
   pos = pos_;
   reset();
 }
  
  void reset() {
   //depth = random(5);
   depth = 6;
   speed = random(10)/100;
  }
  
  
  void draw () {
    depth -= speed;
    fill (#00ffff);
    rect (Grid * (pos + 2), Grid * (6+depth/2), Grid, Grid); 
  }
  
  /*
  void update () {
    if (frameCount%100 == 0) {
      if (depth > 0) {
        depth-- ;
      }
    }
  }
  */
  
}