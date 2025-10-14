class GameObject {

  //instance variables
  PVector loca;    //location
  PVector velo;    //velocity
  int lives;

  //constructor
  GameObject(float lx, float ly, float vx, float vy) {
    loca = new PVector(lx, ly);
    velo = new PVector(vx, vy);
    lives = 1;
  }

  GameObject(PVector l, PVector v) {
    loca = l;
    velo = v;
    lives = 1;
  }
  
  GameObject(PVector l, PVector v, int lv) {
    loca = l;
    velo = v;
    lives = 1;
  }

  void act() {
  }


  void show() {
  }
}
