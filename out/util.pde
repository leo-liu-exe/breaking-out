void shadowText(String text, float x, float y, int size) { //fancy text
  textSize(size);
  fill(0);
  text(text, x-5, y+5);
  fill(0, 255, 255);
  text(text, x, y);
}
void tactileButton(int x, int y, int w, int h, String txt, int sx, int sy, int s) { //tactileButton function
  strokeWeight(1);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY< y+h) fill(100, 100, 100); //if hoving on button change appearance
  else fill(255);
  rect(x, y, w, h);
  shadowText(txt, sx, sy, s);
}
void resetGame() { //game initialization/reset
  live = 3;
  S = 0;
  timer = 100;
  for (int i = 0; i < n; i++) {
    isBroken[i] = false;
  }
  resetRound(); // reset round
}
