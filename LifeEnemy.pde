//敵の体力ゲージ
void enemyLife() {
  for (int i = 0; i < 30; i++) {
    fill(0, 0, 255, 20);
    stroke(0);

    if (enemylife[i] <= 0) {//体力(ブロック)が消える。
      fill(255);
      noStroke();
    }
    rect(i*width/30, 0, width/30, width/40);
  }
}
