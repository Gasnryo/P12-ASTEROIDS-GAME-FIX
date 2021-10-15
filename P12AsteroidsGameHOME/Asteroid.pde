class Asteroid extends GameObject {//=
  Asteroid() {
    //Asteroid Setup Variables
    lives = 1;
    loc = new PVector(random(0, width), random(0, height));
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
    noFill();
    stroke(#814415);
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
          
          if(size >= 50) {//======
          myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          }//======
          
        }//=====
      }//====
      i++;
    }//===
    
    //Win Code
    if (AsteroidDeaths == AsteroidAmount*7) {
      victory = true;
     mode = gameover;
    }
  }//==
}//=
