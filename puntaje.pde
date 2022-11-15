class Puntaje {
  int cuenta;

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
    if (cuenta >=10){
      return true;
    } else {
      return false;
    }
  }
}
