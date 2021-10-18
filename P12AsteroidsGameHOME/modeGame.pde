void game() {
  //bg
  if (myShip.lives == 3) {
    background(0);
  } else if (myShip.lives == 2) {
    background(#310606);
  } else if (myShip.lives == 1) {
    background(#5A0D0D);
  }
  
  
  int S = 0;
  while (S < numstars) {
    myStars[S].show();
    myStars[S].act();
    S++;
  }

  //spawn objects
  int i = 0;
  while (i < myObjects.size()) {//==
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();

    //delete objects
    if (myObj.lives <= 0) {
      myObjects.remove(i);
    } else {//===
      i++;
    }//===
  }//==

  //Star Background


  //UFO

  counter++;
  if (counter >= 500) {
    myObjects.add(new UFO());
    counter = 0;
  }
  if (fkey) {
    fkey = false;
    mode = pause;
  }
}
