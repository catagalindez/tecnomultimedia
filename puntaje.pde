class Puntaje {
  int cuenta;

  Puntaje() {
    
  }

  void dibujar(int cuenta_) {
    cuenta = cuenta_;
    Contador();
    pushStyle();
    fill (25);
    textSize(30);
    text("Puntaje: "+cuenta, width/20, height/8);
    println();
    popStyle();
  }

  void Contador() {
  }
}
