class Ship extends GameObject {

  PVector dir;
  int shotTimer, threshold, immunity, tpTimer;

  Ship() {
    lives = 3;
    immunity = 0;
    tpTimer = 0;
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    dir = new PVector(0, -0.1);
    shotTimer = threshold;
    threshold = 30;
    size = 25;
  }

  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    noFill();
    stroke(ship);
    strokeWeight(2);
    //triangle(-25, -12.5, -25, 12.5, 25, 0);
    triangle(-(size), -(size/2), -(size), size/2, size, 0);
    popMatrix();
  }

  void act() {
    super.act();

    
    //Speed limit
    if (vel.mag() > 5) vel.setMag(5);
    if (upkey == false) vel.setMag(vel.mag()*0.95);

    //move forward
    if (upkey) {
      vel.add(dir);
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
    }

    //move backwards
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(-radians(5));
    if (rightkey) dir.rotate(radians(5));
    
    //Shoot bullet
    shotTimer++;
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
    
    //teleport
    tpTimer++;
    if (rkey == true && tpTimer > 60) {
     loc.set(random(0, width), random(0, height));
     
    
    }

    //Asteroid Collisions
    int i = 0;
    while (i < myObjects.size()) {//===
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Asteroid) {//====
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) <= size/2+myObj.size && immunity >= 60) {//=====
          lives = lives-1;
          immunity = 0;
        }//=====
      }//====
      i++;
    }//===
    
    //Immunity
    immunity++;
    if (immunity < 15) {
      ship = #FF0004;
    } else if (immunity < 30) {
      ship = #FFE200;
    } else if (immunity < 45) {
      ship = #3AFF00;
    } else if (immunity >= 60) {
      ship = #FFFFFF;
    }
    
    //Game Over (Lose)
    if (lives == 0) {
      victory = false;
      mode = gameover;
    }
  }//END act
}
