class UFO extends GameObject {
  //Slowly moving sideways
  float move;
  int ufotime;
  int ufobullettimer;
  
  
 UFO() {
   
   
   lives = 1;
   move = random(-5, 5);
   ufotime = 0;
   
   
   int spawnpos= int(random(0, 4));
   //0 = top
   if (spawnpos == 0) {
     loc = new PVector(random(0, width), 0);
     vel = new PVector (move, 5);
   //1 = left
   } else if (spawnpos == 1) {
     loc = new PVector(0, random(0, height));
     vel = new PVector (5, move);
   //2 = bottom
   } else if (spawnpos == 2) {
     loc = new PVector(random(0, width), height);
     vel = new PVector (move, -5);
   //3 = right
   } else if (spawnpos == 3) {
     loc = new PVector(width, random(0, height));
     vel = new PVector (-5, move);
   }
 }
 
 void show() {
   fill(#B71417);
   stroke(yellow);
   circle(loc.x, loc.y, 50);
 }
 
 void act() {
   
   //THE PROBLEM CHILDREN
   
   float vy = myShip.loc.y - loc.y;
   float vx = myShip.loc.x - loc.x;
   
   ufobullettimer++;
   if (ufobullettimer == 39) {
   myObjects.add(new UFOBullet(loc.x, loc.y, vx, vy));
   ufobullettimer = 0;
   }
   
   loc.add(vel);
    
    //the omega if statement (can loop around map edge if exists for under 80 frames, kills it if over 80)
   if (loc.y < -25 && ufotime < 80) {
     loc.y = height+25;
   } else if (loc.y > height+25 && ufotime < 80) {
     loc.y = -25;
   } else if (loc.x < -25 && ufotime < 80) {
     loc.x = width+25;
   } else if (loc.x > width+25 && ufotime < 80) {
     loc.x = -25;
   } else if (loc.y < -25 && ufotime > 80) {
     lives = 0;
   } else if (loc.y > height+25 && ufotime > 80) {
     lives = 0;
   } else if (loc.x < -25 && ufotime > 80) {
     lives = 0;
   } else if (loc.x > width+25 && ufotime > 80) {
     lives = 0;
   }
   
   //Bullet Collisions
    int i = 0;
    while (i < myObjects.size()) {//===
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {//====
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) <= 25+myObj.size) {//=====
          myObj.lives = 0;
          lives = 0;
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
          myObjects.add(new Particle(loc.x, loc.y, red));
          myObjects.add(new Particle(loc.x, loc.y, yellow));
        }//=====
      }//====
      i++;
    }//===
   
   ufotime++;
 }
}
