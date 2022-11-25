class Puntaje {
  int cuenta;
  boolean reinicio = false;

  Puntaje() {
  }

  void dibujar(int cuenta_) {
    cuenta = cuenta_;
    pushStyle();
    fill (25);
    textSize(30);
    text("Puntaje: "+cuenta, width/20, height/8);
    popStyle();
    ganaste();
  }

  boolean ganaste() {
    if (cuenta >=10) {
      return true;
    } else if (reinicio == true) {
      return false;
    } else {
      return false;
    }
  }

  void reiniciar() {
    if (reinicio == false) {
      reinicio = true;
      cuenta= 0;
    }
    reinicio = false;
  }
}
