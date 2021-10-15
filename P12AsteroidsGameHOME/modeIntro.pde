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

  //Asteroids/Framerate text
  textAlign(CENTER, CENTER);
  textFont(Origin);
  textSize(introtextsize);
  fill(lightblue);
  text("ASTEROIDS", width/2, height*0.4);
  textSize(50);
  text(int(frameRate), width*0.95, height*0.05);

  //Start Button
  fill(255);
  stroke(0);
  circle(width/2, height*0.7, 100);
}
