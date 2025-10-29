class Particle extends GameObject {

  //instance variables
  int strokeT = 255;
  int fillT = 255;
  int cp; 

  Particle(float x, float y, PVector v, color cp) {
    super(x, y, v.x, v.y);
    velo.setMag(2);
    velo.rotate(random(PI/2, 3*PI/2));
    velo.add(player1.velo);
  }
  
  Particle(float x, float y, float vx, float vy) {
    super(x, y, random(-1,1), random(-1,1));
    velo.setMag(2);
  }

  void show() {
    strokeWeight(1);
    stroke(blue, strokeT);
    fill(blue, fillT);
    circle(loca.x, loca.y, 3);
    int t = 0;
    if (t < 255) {
      strokeT = strokeT - 1;
      fillT = fillT - 1;
      t++;
    }
  }


  void act() {
    loca.add(velo); //movement
    velo.setMag(min(velo.mag(), 1)); //speed limit
  }
}
