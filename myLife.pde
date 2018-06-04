//自分の体力ゲージ
void MyLife() {
  for (int i = 0; i < 5; i++) {
    fill(255, 0, 0, 20);
    stroke(0);

    if (life[i] <= 0) {
      fill(255);
      noStroke();
    }
    rect(i*60+width/4*3, 970, 60, 60);
  }
}
