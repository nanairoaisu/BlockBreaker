//タイトル画面(説明含む)
void start1() {
  fill(255);
  rect(0, 0, width, height);
  fill(0);
  textAlign(CENTER);
  textSize(105);
  text("BLOCK BREAKER", width/2, height/5*2);
  textSize(55);
  text("PRESS 'Z'key TO START", width/2, height/5*3);
  textSize(30);
  text("Attack → 'Z'key", width/2, height/5*4);
  text("Move → the cross key", width/2, height/5*4+50);
  text("Slow move → the cross key + Shift",width/2,height/5*4+100);
}

//GAMEOVER
void YouLose() {
  fill(255);
  rect(0, 0, width, height);
  fill(0);
  textSize(105);
  text("YOU LOSE", width/2, height/5*2);
}

//GAME CLEAR
void YouWin() {
  fill(255);
  rect(0, 0, width, height);
  fill(0);
  textSize(105);
  text("YOU WIN", width/2, height/5*2);
}
