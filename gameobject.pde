class GameObject {

  //instance variables
  PVector loca;
  PVector velo;
  int lives;
  float d;

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

  void wrapAround() {
    if (loca.x < -20) loca.x = width+20;
    if (loca.x > width+20) loca.x = -20;
    if (loca.y < -20) loca.y = height+20;
    if (loca.y > height+20) loca.y = -20;
  }
}
