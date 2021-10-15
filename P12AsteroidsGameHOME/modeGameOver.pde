void gameOver() {
  if (victory == true) { //Win
    background(0, 255, 0);
    fill(0);
    textFont(Origin);
    textSize(100);
    text("WINNER", width/2, height/2);
  } else if (victory == false) { //Lose
    background(0, 0, 255);
    fill(0);
    textFont(Origin);
    textSize(100);
    text("LOSER", width/2, height/2);
  } else { //Error
    background(255, 0, 0);
    fill(0);
    textFont(Origin);
    textSize(100);
    text("BIG ERROR", width/2, height/2);
  }
}
