void game() {
  //bg
  background(0);
  
  

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
  
  //UFO
  
  counter++;
  if (counter >= 180) {
   myObjects.add(new UFO());
   counter = 0;
  }
}
