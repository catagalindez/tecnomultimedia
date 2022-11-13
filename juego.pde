class Juego {
  Pantalla pantalla;
  int numPantallas;

  Juego() {
    pantalla = new Pantalla();
  }

  void dibujar() {
    pantalla.dibujar();
  }

  void mousePresionado() {
    pantalla.mousePresionado();
  }
}
