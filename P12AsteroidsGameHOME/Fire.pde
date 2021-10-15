class Fire extends GameObject {
  
  int t; //transparency
  PVector nudge;
  
  Fire() {
    lives = 1;
    size = int(random(5, 12));
    t = int(random(200, 255));
    loc = myShip.loc.copy();
    
    //push fire back
    nudge = myShip.dir.copy();
    nudge.rotate(PI);
    nudge.setMag(20);
    loc.add(nudge);
    vel = myShip.dir.copy();
    vel.rotate(PI+random(-0.3, 0.3));
    vel.setMag(random(0, 5));
  }
  
  void show() {
    noStroke();
    fill(255, 0, 0, t);
    circle(loc.x, loc.y, size);
  }
  
  void act() {
    super.act();
    t = t-10;
    if (t <= 0) lives = 0;
  }
  
}
