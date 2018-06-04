//敵の見た目
class EnemyStyle {
  float degree[] = new float [6];
  float EnemyStyleX[] = new float [5];
  float EnemyStyleY[] = new float [5];
  EnemyStyle() {
    for (int i = 0; i < 6; i++) {
      degree[i] = i * PI / 5 * 2;
    }
  }


  void display() {
    stroke(0);
    fill(255);
    ellipse(eneX, eneY, 250, 250);//外枠
    ellipse(eneX, eneY, 190, 190);//
    for (int i = 0; i < 5; i++) {
      EnemyStyleX[i] = eneX + 120 * cos(degree[i]);
      EnemyStyleY[i] = eneY + 120 * sin(degree[i]);
      ellipse( EnemyStyleX[i], eneY + 120 * sin(degree[i]), 60, 60);//五か所に丸。
      degree[i] += PI/60;
    }
    for (int i = 0; i < 3; i++) {//lineで星を描く。
      line(EnemyStyleX[i], EnemyStyleY[i], EnemyStyleX[i+2], EnemyStyleY[i+2]);
      if (i<2) {
        line(EnemyStyleX[i], EnemyStyleY[i], EnemyStyleX[i+3], EnemyStyleY[i+3]);
      }
    }
  }
}
