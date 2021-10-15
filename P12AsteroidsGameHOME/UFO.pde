class UFO extends GameObject {
  //Slowly moving sideways
  float move;
  int ufotime;
  
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
   fill(0, 255, 255);
   stroke(255);
   square(loc.x, loc.y, 100);
 }
 
 void act() {
   loc.add(vel);
    
   if (loc.y < -50 && ufotime < 80) {
     loc.y = height+50;
   } else if (loc.y > height+50 && ufotime < 80) {
     loc.y = -50;
   } else if (loc.x < -50 && ufotime < 80) {
     loc.x = width+50;
   } else if (loc.x > width+50 && ufotime < 80) {
     loc.x = -50;
   } else if (loc.y < -50 && ufotime > 80) {
     lives = 0;
   } else if (loc.y > height+50 && ufotime > 80) {
     lives = 0;
   } else if (loc.x < -50 && ufotime > 80) {
     lives = 0;
   } else if (loc.x > width+50 && ufotime > 80) {
     lives = 0;
   }
   
   //if (loc.y < -50) lives = 0;
   //if (loc.y > height+50) lives = 0;
   //if (loc.x < -50) lives = 0;
   //if (loc.x > width+50) lives = 0;
   
   ufotime++;
   //if (ufotime >= 132) {
   // lives = 0; 
   //}
   println(ufotime);
 }
}
