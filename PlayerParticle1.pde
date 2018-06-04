//playerのnormalAttackのArrayList
class PlayerParticle {
  ArrayList<PlayerAttack> playerAttack;
  ArrayList rem;

  PlayerParticle() {
    playerAttack = new ArrayList<PlayerAttack>();
  }

  void addParticle() {
    if (frameCount%4 == 0 && z) {//'z'keyを押されたとき、かつ、frameが４でわれた時
      playerAttack.add(new PlayerAttack());
    }
  }

  void run() {
    Iterator<PlayerAttack> it = playerAttack.iterator();

    while (it.hasNext()) {
      PlayerAttack pa = it.next();
      pa.display();
    }
  }
}
