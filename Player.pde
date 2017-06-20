class Player {

  float Grid = gGrid;
  
  int pos;
  float xpos;
  float ypos;
  boolean hasGold;
  int gold;
  
// 7 positions
// 5 positions on the water
// 2 positions at either side

  Player() {
    gold = 0;
    reset ();
  }

  void getGold() {
    hasGold = true;
  
  }
  void reset() {
    pos = 0;
    xpos = Grid;
    ypos = Grid * 4;
    hasGold = false;
  }

  void draw() {
    
    xpos = Grid * (pos +1);
    if (pos == 0 || pos == 6) {
      ypos = Grid * 2;
    } else {
      ypos = Grid * 4;  
    }
    
    if (hasGold) {
      fill(#C5CB23);
    } else {
      fill(255);
    }
    rect(xpos, ypos, Grid, Grid);
    
  
  }
  boolean bTurtleIsDiving() {
    return (turtles[pos].diving); 
  }
  
  void drown() {
    reset();
  }
 
  void drawCache() {
    fill (#C5CB23); 
    rect (0,0,50, gold*10);
  }
  
  
  void stashGold() {
    gold++;
    hasGold = false;
  }
  
  void move(int dir) {
  
    // dir -1 = left
    // dir +1 = right
    
  switch (dir) {
    case (-1):
      if (pos>0) {
        pos--;
      };
      if (pos == 0 && hasGold) {
        stashGold();
      }
      break;
    case (1):
      if (pos<6) {
        pos++;
      }
      
      if (pos==6) {
        getGold();
      }
      break;
  
  }    
    
  }


}