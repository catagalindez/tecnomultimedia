class Minijuego {
  Hueco [] [] huecos;
  Contador contador;
  int numHuecosX = 3;
  int numHuecosY = 2;
  int segundos = 15;

  Minijuego() {
    huecos = new Hueco[numHuecosX][numHuecosY];
    contador = new Contador(segundos);
    for (int i = 0; i < numHuecosX; i++) {
      for (int j = 0; j < numHuecosY; j++) {
        int posX = round (map(i, 0, numHuecosX, 0+width/4, width));
        int posY = round (map(j, 0, numHuecosY, 0+height/4+height/15, height));
        huecos [i][j]=new Hueco(posX, posY);
      }
    }
  }

  void dibujar() {
    dibujarHuecos();
    contador.dibujar();
    contador.perdiste();
  }

  void dibujarHuecos() {
    for (int i = 0; i < numHuecosX; i++) {
      for (int j = 0; j < numHuecosY; j++) {
        huecos[i][j].dibujar();
      }
    }
  }

  void asignarRaton() {
    if (frameCount%60 == 0) {
      int i = floor(random(0, 3));
      int j = floor(random(0, 2));
      huecos[i][j].raton=new Raton(huecos[i][j].posX, huecos[i][j].posY);
    }
  }

  boolean perdiste() {
    if (contador.perdiste()== true) {
      return true;
    } else {
      return false;
    }
  }

  void mousePresionado() {
    for (int i = 0; i < numHuecosX; i++) {
      for (int j = 0; j < numHuecosY; j++) {
        huecos[i][j].mousePresionado();
      }
    }
  }
}
