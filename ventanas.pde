class Ventana {
  float posX;
  int posY;
  float vel;
  color luz;
  int ancho;
  int alto;

  Ventana (float _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
  }

  void dibujarVentana (float _vel, color luz) {
    vel = _vel;
    pushStyle();
    noStroke();
    fill(luz);
    rect (posX+=vel, posY, ancho, alto);
    popStyle();
  }


  void ventanaVuelveAlComienzo (int _posX, int _posY) {
    if (seMueveALaIzquierda() == true && posX <= -130) {
      posX = _posX;
      posY = _posY;
    } else if (seMueveALaIzquierda() == false && posX >= width) {
      posX = _posX;
      posY = _posY;
    }
  }

  boolean seMueveALaIzquierda() {
    if (vel <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
