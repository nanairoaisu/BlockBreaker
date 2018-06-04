//十字キーなどによる操作
void keyPressed() {
  if (keyCode == RIGHT) right = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == UP) up = true;
  if (keyCode == SHIFT) shift =true;
  if (key == 'z') z = true;
}

void keyReleased() {
  if (keyCode == RIGHT) right = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == UP) up = false;
  if (keyCode == SHIFT) shift = false;
  if (key == 'z') z = false;
}
