void gameOver() {
  imageMode(CORNERS);
  textAlign(CENTER);
  image(gameovergif[fgog], 0, 0, width, height);
  if (frameCount % 2 == 0) fgog = fgog+1;
  println(fgog);
  //looping
  if (fgog == GOGframes) fgog = 0;
  
  if (victory == true) { //Win
    //
    fill(purple);
    textFont(Origin);
    textSize(100);
    text("WINNER", width/2, height/2);
    textSize(30);
    text("Asteroids Killed: "+AsteroidDeaths, width/2, height*0.7);
  } else if (victory == false) { //Lose
    //
    fill(red);
    textFont(Origin);
    textSize(100);
    text("LOSER", width/2, height/2);
    textSize(30);
    text("Asteroids Killed: "+AsteroidDeaths, width/2, height*0.7);
  } else { //Error
    background(255, 0, 0);
    fill(0);
    textFont(Origin);
    textSize(100);
    text("BIG ERROR", width/2, height/2);
  }
}
