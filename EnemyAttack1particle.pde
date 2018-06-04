class EnemyParticle {
  ArrayList<EnemyAttack> ellipseAttack;

  EnemyParticle() {
    ellipseAttack = new ArrayList<EnemyAttack>();
  }

  void addParticle() {
    if (frameCount%4 == 0) {//連続でだしたくなかったので、frameが３で割り切れた時だけ動かす。
      ellipseAttack.add(new EnemyAttack());
    }
  }

  void run() {
    Iterator<EnemyAttack> it = ellipseAttack.iterator();

    while (it.hasNext()) {
      EnemyAttack e = it.next();//次あるなら、次のも表示するっていう感じ。
      e.display();
    }
    for ( int i = 0; i < 6; i++) {
      if (RemoveRange[i] == 1) {//除外すべき範囲だったら
        it.remove();//その値を削除。
      }
    }
  }
}
