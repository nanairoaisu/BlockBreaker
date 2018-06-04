void EnemyMover() {
  fill(0, 0, 255, 110);//敵の色
  ellipse(eneX, eneY, 5, 5);//敵八の字

  eneX = baseX + 400 * 2 *  sin(angX);//敵　八の字　ｘ変化
  eneY = baseY + 200 * sin(angY);//敵　八の字　ｙ変化
  angX += PI/ 400;//敵　八の字　角度
  angY += PI / 200;//
}
