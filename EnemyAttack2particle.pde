class ParticleSystem {
  ArrayList<Particle> particles;

  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(new PVector(eneX, eneY)));
  }

  void run() {
    Iterator<Particle> it = particles.iterator();

    while (it.hasNext()) {
      Particle p = it.next();
      p.run();
    }
    if (RemoveRange2 == 1) {//枠外にでたら
      it.remove();//値の消去
    }
  }
}
