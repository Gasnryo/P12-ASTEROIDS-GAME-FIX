class Asteroid extends GameObject {//=
  //int tpamount;
  int tptimer;
  
  Asteroid() {
    //Asteroid Setup Variables
    lives = 1;
    tpamount = 0;
    tptimer = 0;
    
    
    
    //setup location
    loc = new PVector(random(0, width), random(0, height));
    while(dist(loc.x, loc.y, width/2, height/2) < 200) {
      loc = new PVector(random(0, width), random(0, height));
    }
    vel = new PVector(0, 1);
    vel.rotate(random(0, TWO_PI));
    size = 100;
    
    
  }
  
  Asteroid(int s, float x, float y) {
    lives = 1;
    loc = new PVector (x, y);
    vel = new PVector (0, 1);
    vel.rotate(random(0, TWO_PI));
    size = s;
  }

  void show() {
    //Asteroid Visual
    fill(#311804);
    stroke(brown);
    strokeWeight(6);
    circle(loc.x, loc.y, size);
  }

  void act() {//==
    super.act();

    //Bullet Collisions
    int i = 0;
    while (i < myObjects.size()) {//===
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {//====
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) <= size/2+myObj.size) {//=====
          myObj.lives = 0;
          lives = 0;
          AsteroidDeaths++;
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          myObjects.add(new Particle(loc.x, loc.y, brown));
          
          if(size >= 50) {//======
          myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          }//======
          
        }//=====
      }//====
      i++;
    }//===
    
    ////TP ship
    //  //Teleport cooldown
    //  tptimer++;
    //  //check for pressing r
    //  if (rkey == true && tptimer > 60) {
    //   //teleport to random location
    //   myShip.loc.set(random(0, width), random(0, height));
    //     //check for being inside asteroid
    //     while (dist(loc.x, loc.y, myShip.loc.x, myShip.loc.y) <= 50+size/2) {//=====
    //       //teleport to new location
    //        myShip.loc.set(random(0, width), random(0, height));
    //      }//=====
    //      //reset cooldown
    //      tptimer = 0;
    //}
    
    //Win Code
    if (AsteroidDeaths == AsteroidAmount*7) {
      victory = true;
     mode = gameover;
    }
  }//==
}//=
