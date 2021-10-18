class Particle extends GameObject {
  int t; //transparency
  int clr;
  
 Particle(float x, float y, color b) {
   size = int(random(5, 12));
   lives = 1;
   t = int(random(200, 255));
   loc = new PVector(x, y);
   vel = new PVector(random(-1, 1), random(-1, 1));
   vel.setMag(random(0, 5));
   clr = b;
   
 }
 
 void show() {
   noStroke();
   fill(clr, t);
   circle(loc.x, loc.y, size);
 }
 
 void act() {
   super.act();
   t=t-5;
   if (t <= 0) lives = 0;
 }
}
