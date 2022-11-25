class Minijuego {
  Hueco [] [] huecos;
  Timer timer;
  Puntaje puntaje;
  Pata pata;
  Boton boton;
  int numHuecosX = 3;
  int numHuecosY = 2;
  int segundos = 15;
  int cuenta = 0;
  boolean reinicio = false;

  Minijuego() {    
    huecos = new Hueco[numHuecosX][numHuecosY];
    timer = new Timer(segundos);
    puntaje = new Puntaje();
    pata = new Pata();
    boton = new Boton();
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
    pata.dibujar();
    if (ganaste()==true){
      pantallaGanaste();
    }
    if (perdiste()==true){
      pantallaPerdiste();
    }
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
  
  void pantallaPerdiste() {
    background(255);
    fill(20);
    text("perdiste", 100, 100);
    boton.boton3("Menú");
  }

  void pantallaGanaste() {
    background(255);
    fill(20);
    text("ganaste", 100, 100);
    boton.boton3("Menú");
  }

  boolean perdiste() {
    if (reinicio==true) {
      return false;
    } else if (ganaste() == false &&
      timer.perdiste()== true) {
      return true;
    } else {
      return false;
    }
  }

  boolean ganaste() {
    if (reinicio==true) {
      return false;
    } else if (puntaje.ganaste() == true) {
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
    pata.mousePresionado();
  }

  void reiniciar () {
    timer.reiniciar();
    puntaje.reiniciar();
    if (reinicio == false) {
      reinicio = true;
      cuenta = 0;
    }
    reinicio = false;
  }
}
