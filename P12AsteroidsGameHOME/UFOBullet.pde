class UFOBullet extends GameObject {//START
  int timer;
  
  UFOBullet(float x, float y, float vx, float vy) {
    loc = new PVector(x, y);
    vel = new PVector(vx, vy);
    timer = 60;
    lives = 1;
    vel.setMag(10);
    size = 10;
  }
  
  void show() {
    stroke(255, 0, 0);
    strokeWeight(4);
    noFill();
    circle(loc.x, loc.y, size);
  }
  
  void act() {
   super.act(); 
   
   timer--;
    if (timer <= 0) {
     lives = 0; 
    }
  }
}//END
