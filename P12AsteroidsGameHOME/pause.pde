void pause() {
  background(0, 0, 0);
  
  int S = 0;
  while (S < numstars) {
    myStars[S].show();
    myStars[S].act();
    S++;
  }
  
  textAlign(CENTER, CENTER);
  fill(lightblue);
  textSize(125);
  text("ASTEROIDS", width/2, height*0.4);
  textSize(62);
  fill(red);
  text("PAUSED", width/2, height*0.6);
  textSize(31);
  fill(purple);
  text("Press F to continue", width/2, height*0.8);
  
  
  if (fkey) {
    fkey = false;
   mode = game; 
  }
}
