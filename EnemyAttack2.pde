//敵中心から溢れ出す攻撃
class Particle {
  PVector location;//位置ベクトル
  PVector velocity;//速さのベクトル
  PVector acceleration;//加速度のベクトル

  Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));//速さがｘがー１から１、ｙがー２から０のランダム。
    location = l.get();//引数のベクトルをいれる。
  }

  void run() {//updateとdisplayを合わせた。
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);//速さに加速度をたしていく。
    location.add(velocity);//位置ベクトルに速さをたしていく。
  }

  void display() {
    stroke(0);//黒枠
    fill(0, 0, 255, 70);//青の透明度70
    ellipse(location.x, location.y, 8, 8);//直径８の円

    if (sqrt(pow(location.x - playerX, 2)+pow(location.y - playerY, 2))<8) {//当たり判定様。
      if (!lifeCheck) {
        for (int i = 0; i < 5; i++) {
          life[i] -= 1;
        }
        lifeCheck = true;
      }
    }
    if ( location.x + 4 < -50 || location.x - 4 > width + 50 || location.y + 4 < -50 || location.y - 4 > height + 50) {//枠外に出た時の除外
      RemoveRange2 = 1;
    } else {
      RemoveRange2 = 0;
    }
  }
}
