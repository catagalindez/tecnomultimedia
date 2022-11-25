class Timer {
  int segundos;
  boolean reinicio = false;

  Timer (int segundos_) {
    segundos = segundos_;
  }

  void dibujar() {
    cuenta();
    pushStyle();
    fill(255);
    rect(width-width/4-10,height/8-40,190,60);
    fill (25);
    textSize(30);
    text("Tiempo: "+segundos, width-width/4, height/8);
    popStyle();
    perdiste();
  }

  void cuenta() {
    if (segundos > 0 && frameCount%60 == 0) {
      segundos = segundos - 1;
    }
  }

  boolean perdiste() {
    if (reinicio == true) { 
      return false;
    } else if (segundos > 0) {
      return false;
    } else {
      return true;
    }
  }

  void reiniciar() {
    if (reinicio == false) {
      reinicio = true;
      segundos = 15;
    }
    reinicio = false;
  }
}
