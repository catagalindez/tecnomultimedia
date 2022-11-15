class Minijuego {
  Hueco [] [] huecos;
  Timer timer;
  Puntaje puntaje;
  int numHuecosX = 3;
  int numHuecosY = 2;
  int segundos = 15;
  int cuenta = 0;

  Minijuego() {
    huecos = new Hueco[numHuecosX][numHuecosY];
    timer = new Timer(segundos);
    puntaje = new Puntaje();
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
    cuentaPuntaje();
    puntaje.dibujar(cuenta);
    timer.dibujar();
    println (perdiste()+" "+ganaste());
  }

  void dibujarHuecos() {
    asignarRaton();
    for (int i = 0; i < numHuecosX; i++) {
      for (int j = 0; j < numHuecosY; j++) {
        huecos[i][j].dibujar();
      }
    }
  }

  void asignarRaton() {
    if (frameCount%45 == 0) {
      sacarRaton();
      dibujarRaton();
    }
  }

  void dibujarRaton() {
    int i = floor(random(0, numHuecosX));
    int j = floor(random(0, numHuecosY));
    huecos[i][j].raton=new Raton(huecos[i][j].posX, huecos[i][j].posY);
  }

  void sacarRaton() {
    for (int i = 0; i < numHuecosX; i++) {
      for (int j = 0; j < numHuecosY; j++) {
        huecos[i][j].raton= null;
      }
    }
  }

  void cuentaPuntaje() {
    for (int i = 0; i < numHuecosX; i++) {
      for (int j = 0; j < numHuecosY; j++) {
        if (huecos[i][j].atrapaRaton==true) {
          cuenta+=1;
          huecos[i][j].resetAtrapa();
          huecos[i][j].raton= null;
        }
      }
    }
  }

  boolean perdiste() {
    if (ganaste() == false &&
      timer.perdiste()== true) {
      return true;
    } else {
      return false;
    }
  }

  boolean ganaste() {
    if (puntaje.ganaste() == true) {
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
