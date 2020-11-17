void intro() {
  gameover.pause();
  win.pause();
  intro.play(); //play sound
  background(255);
  image(gif[frame], 0, 0, width, height);
  frame++;
  if (frame == 9) {
    frame = 0;
  }
  stroke(0);
  shadowText("BREAKOUT", width/2, 200, 100); //title
  tactileButton(250, 340, 300, 130, "PLAY", 400, 395, 80); 
}
void introClicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 340 && mouseY< 470) { 
    intro.rewind();
    mode = GAME;
    resetGame();//resets game
    intro.pause();
  }
}
