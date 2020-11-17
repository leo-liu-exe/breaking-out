void gameover() {
  if (S==n) {
    textSize(100);
    fill(0, 255, 0);
    text("YOU WIN", width/2, height/2); 
    win.play();
  } else {
    textSize(100);
    fill(255, 0, 0);
    text("GAME OVER", width/2, height/2); 
    gameover.play();
    gameover.play();
  }
  intro.rewind();
}
