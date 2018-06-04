//player normal attack
class PlayerAttack {
  float attackX = playerX - 23;//三角形の一番左のｘと下のｙ
  float attackY = playerY - 6;

  PlayerAttack() {
  }

  void display() {
    for (int i = 0; i < 3; i++) {
      stroke(0);
      fill(255, 0, 0, 70);//自分の色
      triangle(attackX + 18 * i, attackY, attackX + 18 * i + 10, attackY, attackX + 18 * i + 5, attackY - 10);//横一列の三角形三つ
    }
    attackY -= 5;//上に向かって動く。

    if (attackY < 0) {//三角が画面外にでたら、削除したい
      RemoveRange_pa1 = 1;
    } else {
      RemoveRange_pa1 = 0;
    }

    if (attackX > eneX - 125 &&  eneX + 125 > attackX + 59 && attackY-10 < eneY && eneY < attackY) {//当たり判定
      for (int i = 0; i<30; i++) {
        enemylife[i]-=1;
      }
    }
  }
}
