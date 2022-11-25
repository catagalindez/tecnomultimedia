class Juego {
  Pantalla pantalla;

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
