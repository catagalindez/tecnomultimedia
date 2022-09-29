class Edificios {
  Ventana ventanas [] [];
  float _posX;
  float posX;
  int posY= round(random(50, 250));
  int ancho= round(random(80, 130));
  int alto= height;
  float vel = -.5;
  int numVentanasAncho = 4;
  int numVentanasAlto = 10;
  int distVentanasAncho = 12; //distancia con borde izquierda
  int distVentanasAlto = 15; //distancia con borde arriba
  int anchoVentanas = 10;
  int altoVentanas = 15;

  Edificios(int numeroEdificio) {
    posX = _posX + numeroEdificio;
    ventanas = new Ventana [numVentanasAncho][numVentanasAlto];
    for (int i = 0; i < numVentanasAncho; i++) {
      for (int j = 0; j < numVentanasAlto; j++) {
        int k = round(map (i, 0, numVentanasAncho, posX+distVentanasAncho, posX+ancho));
        int l = round(map (j, 0, numVentanasAlto, posY+distVentanasAlto, posY+height));
        if (random (0, 100) < 40) {
          ventanas[i][j] = new Ventana(k, l, anchoVentanas, altoVentanas);
        }
      }
    }
  }

  void dibujar() {
    dibujarEdificio();
    dibujarVentanas();
  }

  void dibujarEdificio () {
    EdificioVuelveAlComienzo ();
    pushStyle ();
    noStroke ();
    fill (216, 90, 103);
    rect(posX+=vel, posY, ancho, alto);
    popStyle();
  }

  void dibujarVentanas () {
    for (int i = 0; i < numVentanasAncho; i++) {
      for (int j = 0; j < numVentanasAlto; j++) {
        if (ventanas [i][j] != null) {
          ventanas[i][j].dibujarVentana(vel, color(242, 221, 174));
        }
      }
    }
  }

  void EdificioVuelveAlComienzo () {
    if (seMueveALaIzquierda() == true && posX <= -130) {
      posX = width;
      posY=round(random(50, 250));
      ancho=round(random(80, 130));
    } else if (seMueveALaIzquierda() == false && posX >= width) {
      posX = -150;
      posY=round(random(50, 250));
      ancho=round(random(80, 130));
    }
    for (int i = 0; i < numVentanasAncho; i++) {
      for (int j = 0; j < numVentanasAlto; j++) {
        if (ventanas [i][j] != null) {
          int k = round(map (i, 0, numVentanasAncho, posX+distVentanasAncho, posX+ancho));
          int l = round(map (j, 0, numVentanasAlto, posY+distVentanasAlto, posY+height));
          ventanas[i][j].ventanaVuelveAlComienzo(k,l);
        }
      }
    }
  }

  void AlteroVelocidadDerecha () {
    vel += .5;
  }

  void AlteroVelocidadIzquierda () {
    vel -= .5;
  }
  
  void seDetiene () {
    vel = 0;
  }

  boolean seMueveALaIzquierda() {
    if (vel <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
