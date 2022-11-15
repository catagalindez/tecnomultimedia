class Pantalla {
  Minijuego minijuego;

  Pantalla() {    
    minijuego = new Minijuego();
  }

  void dibujar() {    
    minijuego();
  }

  void pantalla1() {
    fill(20);
    text("inicio", 100, 100);
  }

  void minijuego() {
    minijuego.dibujar();
  }

  void mousePresionado() {
    minijuego.mousePresionado();
  }
}
