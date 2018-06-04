import java.util.*;//Javaの導入

EnemyStyle es;//宣言

//EnemyAttack2 kurukuru
Particle p;
ParticleSystem ps;

//Enemy Attack1 poroporo
EnemyAttack e;
EnemyParticle ep;

//Player normal Attack
PlayerAttack pa;
PlayerParticle pp;

float playerX, playerY;//

//八の字
int baseX = 900, baseY = 250;//敵八の字、初期値
float eneX, eneY;//敵八の字ｘ、ｙ座標
float angX = 2 * PI / 3;//敵八の字　角度
float angY = 4 * PI / 3;//敵八の字　角度

//攻撃の座標
float attackX = playerX - 23;
float attackY = playerY - 6;

int life[] ={1, 2, 3, 4, 5};//自分の体力
int enemylife[] = new int [30];//敵の体力
int RemoveRange [] = new int [6];//各攻撃の枠外の値除外の変数(下二つも同様)
int RemoveRange2;
int RemoveRange_pa1 = 0;
int state = 0;

boolean lifeCheck = false;

boolean right, left, down, up, shift, z;//十字カーソル移動

int life_r = 0;
int colorfeed = 100;

float t = 0;//秒数カウント

void setup() {
  fullScreen();//sizeをフルスクリーンに。
  playerX=200;//initial playerX
  playerY=600;

  //Enemy Life
  for (int i =0; i<30; i++) {
    enemylife[i] = i+1;
  }

  //class,ArrayList宣言
  p = new Particle(new PVector(eneX, eneY));
  ps = new ParticleSystem();

  e = new EnemyAttack();
  ep = new EnemyParticle();

  pa = new PlayerAttack();
  pp = new PlayerParticle();

  es = new EnemyStyle();
}

void draw() {

  background(255);//塗りつぶし

  if (state == 0) {
    start1();
  }

  if (keyPressed) {
    if (key == 'z') {
      state=1;
    }
  }

  if (state == 1) {
    EnemyMover();//敵が八の字に動く
    enemyLife();
    MyLife();

    stroke(0);
    fill(255, 0, 0, 110);//自分の色
    ellipse(playerX, playerY, 8, 8);//自分の中心の球

    pa.display();//PlayerAttack

    pp.addParticle();//PlayerAttackParticle
    pp.run();//上に同じ

    es.display();//enemy style

    p.run();//particle

    ps.addParticle();//particle system
    ps.run();

    e.display();//enemyAttack

    ep.addParticle();//enemyParticle
    ep.run();
  }

  if (life[4] <= 0) {
    state = 2;//GameOver
  }

  if (enemylife[29] <= 0) {
    state = 3;//clear
  }

  if (state == 2) {
    YouLose();
  }

  if (state ==  3) {
    YouWin();
  }



  //player move
  if (!shift) {
    if (right) { 
      playerX += 4;
    }
    if (left) { 
      playerX -= 4;
    }
    if (down) { 
      playerY += 4;
    }
    if (up) { 
      playerY -= 4;
    }
  }
  if (shift) {//shift押しながらだとゆっくりになる
    if (right) { 
      playerX += 3;
    }
    if (left) { 
      playerX -= 3;
    }
    if (down) { 
      playerY += 3;
    }
    if (up) { 
      playerY -= 3;
    }
  }

  if (lifeCheck) {//攻撃くらったとき。
    t += 0.16;

    if (t > 5.0) {//一定時間無敵状態になれます(連続でダメージくらうのを防ごうとした結果。)
      t = 0;
      lifeCheck = false;
    }
  }
}
