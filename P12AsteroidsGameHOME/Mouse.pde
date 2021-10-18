void mousePressed() {
  if (mode == intro) {
    
    if (dist(width/2, height*0.7, mouseX, mouseY) < 50) {
     mode = game; 
    }
    
    
    //mode = game;
  } else if (mode == game) {
    
  } else if (mode == pause) {
    
  } else if (mode == gameover) {
    setup();
    mode = intro;
  }
}

void mouseReleased() {
  
}
