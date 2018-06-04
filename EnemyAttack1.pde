//ぐるぐるーとなる弾幕のclass
class EnemyAttack {
  float degree[] = new float [6];//角度の変化ぶん
  int r = 30;//半径


  EnemyAttack() {
    for (int i = 0; i < 6; i++) {
      degree[i] = i * PI / 3;
    }
  }

  void display() {
    for (int i = 0; i < 6; i++) {
      fill(0, 0, 255, 70);//敵の色。
      ellipse( eneX + r * cos(degree[i]), eneY + r * sin(degree[i]), 12, 12);//一周分の球の。
      degree[i] += PI/200;//球を円の周りで回す。
    }

    r+=1;
    for (int j = 0; j < 6; j++) {
      if (sqrt(pow(eneX + r * cos(degree[j]) - playerX, 2 ) + pow(eneY + r * sin(degree[j]) - playerY, 2))<8) {//敵の攻撃が当たった時
        if (!lifeCheck) {
          for ( int i  = 0; i < 5; i++) {
            life[i] -= 1;//自分のライフ減る
          }
          lifeCheck = true;
        }
      }
    }
    for (int i = 0; i < 6; i++) {
      if (eneX + r * cos(degree[i]) < -50 || eneX + r * cos(degree[i]) > width + 50 || eneY + r * sin(degree[i]) < -50 || eneY + r * sin(degree[i]) > height + 50) {//枠外に消えたら削除する。
        RemoveRange[i] = 1;
      } else {
        RemoveRange[i] = 0;
      }
    }
  }
}
