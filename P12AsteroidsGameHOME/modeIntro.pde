void intro() {
  //Display Gif
  imageMode(CORNERS);
  image(asteroidgif[fgif], 0, 0, width, height);
  //fast then slow
  if (frameCount < 120) {
    fgif = fgif+1;
  } else {
    if (frameCount % 2 == 0) fgif = fgif+1;
  }
  //gif loop
  if (fgif == numberOfFramesAsteroid) fgif = 0;

  //Text
  if (introtextsize <= 50) {
    enlarge = true;
  } else if (introtextsize >= 100) {
    enlarge = false;
  }

  //Text expand/shrink
  if (enlarge == true && frameCount % 2 == 0) {
    introtextsize++;
  } else if (enlarge == false && frameCount % 2 == 0) {
    introtextsize--;
  }

  //Asteroids text
  textAlign(CENTER, CENTER);
  textFont(Origin);
  textSize(introtextsize);
  fill(lightblue);
  text("ASTEROIDS", width/2, height*0.4);
  
  
  //Controls
  textAlign(LEFT, CENTER);
  textSize(35);
  fill(red);
  text("W/A/S/D = MOVE",10, height*0.95);
  text("SPACE    = SHOOT",10, height*0.9);
  text("R            = TELEPORT",10, height*0.85);
  text("F            = PAUSE",10, height*0.8);

  //Start Button
  strokeWeight(10);
  if (dist(width/2, height*0.7, mouseX, mouseY) < 50) {
  stroke(green);
  } else {
    stroke(red);
  }
  fill(purple);
  circle(width/2, height*0.7, 100);
}
