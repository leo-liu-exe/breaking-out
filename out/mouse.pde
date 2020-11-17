void mouseReleased() { //click functions
  if (mode == INTRO) introClicks();
  else if (mode == GAME) mode = PAUSE; 
  else if (mode == PAUSE) mode = GAME; 
  else if (mode == GAMEOVER) mode = INTRO;
}
