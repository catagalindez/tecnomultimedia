class EdificiosA {
  Ventana ventanas [] [];
  float _posX;
  float posX;
  int posY= round(random(100, 275));
  int ancho= round(random(150, 175));
  int alto= height;
  int vel = -2;
  int numVentanasAncho = 5;
  int numVentanasAlto = 10;
  int distVentanasAncho = 15; //distancia con borde izquierda
  int distVentanasAlto = 15; //distancia con borde arriba
  int anchoVentanas = 16;
  int altoVentanas = 25;

  EdificiosA(int numeroEdificioA) {
    posX = _posX + numeroEdificioA;
    ventanas = new Ventana [numVentanasAncho][numVentanasAlto];
    for (int i = 0; i < numVentanasAncho; i++) {
      for (int j = 0; j < numVentanasAlto; j++) {
        int k = round(map (i, 0, numVentanasAncho, posX+distVentanasAncho, posX+ancho));
        int l = round(map (j, 0, numVentanasAlto, posY+distVentanasAlto, posY+height));
        if (random (0, 100) < 20) {
          ventanas[i][j] = new Ventana(k, l, anchoVentanas, altoVentanas);
        }
      }
    }
  }

  void dibujar() {
    dibujarEdificio();
    dibujarVentanas();
  }

  void dibujarEdificio() {
    EdificioVuelveAlComienzo ();
    pushStyle ();
    noStroke ();
    fill (88, 41, 73);
    rect(posX+=vel, posY, ancho, alto);
    popStyle();
  }

  void dibujarVentanas () {
    for (int i = 0; i < numVentanasAncho; i++) {
      for (int j = 0; j < numVentanasAlto; j++) {
        if (ventanas [i][j] != null) {
          ventanas[i][j].dibujarVentana(vel, color (234, 205, 140));
        }
      }
    }
  }

  void EdificioVuelveAlComienzo () {
    if (seMueveALaIzquierda() == true && posX <= -175) {
      posX = width;
      posY=round(random(100, 275));
      ancho=round(random(150, 175));
    } else if (seMueveALaIzquierda() == false && posX >= width) {
      posX = -150;
      posY=round(random(100, 275));
      ancho=round(random(150, 175));
    }
    for (int i = 0; i < numVentanasAncho; i++) {
      for (int j = 0; j < numVentanasAlto; j++) {
        if (ventanas [i][j] != null) {
          int k = round(map (i, 0, numVentanasAncho, posX+distVentanasAncho, posX+ancho));
          int l = round(map (j, 0, numVentanasAlto, posY+distVentanasAlto, posY+height));
          ventanas[i][j].ventanaVuelveAlComienzo(k, l);
        }
      }
    }
  }

  void AlteroVelocidadDerecha () {
    vel += 2;
  }

  void AlteroVelocidadIzquierda () {
    vel -= 2;
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
