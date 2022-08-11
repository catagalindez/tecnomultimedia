void keyPressed () {  //MOVIMIENTOS

  Grilla[posX][posY] = 0;
  if (keyCode == LEFT) {
    if (Grilla[posX-1][posY] == 0)
      posX--;
  }
  if (keyCode == RIGHT) {
    if (Grilla[posX+1][posY] == 0)
      posX++;
  }
  if (keyCode == UP) {
    if (Grilla[posX][posY-1] == 0) {
      posY--;
    } 
    if (Grilla[posX][posY-1] == 3) {
      pantalla++;
      posY = 21;
    }
  }
  if (keyCode == DOWN) {
    if (Grilla[posX][posY+1] == 0) {
      posY++;
    }
    if (Grilla[posX][posY+1] == 3) {
      pantalla--;
      posY = 4;
      if (embrujado == true) {
        embrujado = false;
        pantalla = 4;
        cuenta = 500;
      }
    }
  }
  Grilla[posX][posY] = 2;
}

void mousePressed () { //menu

  if (pantalla == 0 &&
    mouseX >= width/4 &&
    mouseY >= height/4+height/24 &&
    mouseX <= width-width/4 &&
    mouseY <= height/2-height/12) {
    pantalla ++;
  } else if (pantalla == 0 &&
    mouseX >= width/4 &&
    mouseY >= height/2+height/12 &&
    mouseX <= width/4+width/2 &&
    mouseY <= height/2+height/12+height/8) {
    pantalla = 3;
  }
}


void mouseClicked() { //volver a menu

  if (pantalla == 5 || pantalla == 4 || pantalla == 3) {
    if ( mouseX >= width-width/8-20
      && mouseY >= height-height/12-15
      && mouseX <= width-width/8+20
      && mouseY <= height-height/12) {
      pantalla = 0;
      cuenta = 500;
      posX = 12;
      posY = 23;
      posYcreditos = height+height/12;
      oscuridad = 255;
      oscuridadPersonaje = 255;
    }
  }
}
