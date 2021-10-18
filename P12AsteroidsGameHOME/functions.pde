void spaceship(float x, float y, float s, color c) {
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(myShip.dir.heading()+radians(90));
  fill(c);
  stroke(0);
  strokeWeight(2);
  circle(0, 0, 100);
  rectMode(CENTER);
  square(0, 112, 25);
  square(0, 50, 100);
  //cockpit glass
  fill(ship2);
  circle(0, 0, 50);
  if (myShip.lives == 1 && frameCount % 6 == 0) {
    myObjects.add(new Particle(myShip.loc.x, myShip.loc.y, ship));
    myObjects.add(new Particle(myShip.loc.x, myShip.loc.y, ship));
    myObjects.add(new Particle(myShip.loc.x, myShip.loc.y, ship));
    myObjects.add(new Particle(myShip.loc.x, myShip.loc.y, ship));
    myObjects.add(new Particle(myShip.loc.x, myShip.loc.y, ship));
    myObjects.add(new Particle(myShip.loc.x, myShip.loc.y, ship));
    
  }
  rectMode(CORNER);
  popMatrix();
}

//rotate(dir.heading());
