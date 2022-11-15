class Pantalla {
  Minijuego minijuego;

  Pantalla() {    
    minijuego = new Minijuego();
  }

  void dibujar() {    
    pantallaActual();
  }

  void pantallaActual() {
    minijuego();
    if (minijuego.perdiste()== true) {
      perdiste();
    }
    if (minijuego.ganaste()==true) {
      ganaste();
    }
  }

  void pantalla1() {
    fill(20);
    text("inicio", 100, 100);
  }

  void perdiste() {
    background(255);
    fill(20);
    text("perdiste", 100, 100);
  }

  void ganaste() {
    background(255);
    fill(20);
    text("ganaste", 100, 100);
  }

  void minijuego() {
    minijuego.dibujar();
  }

  void mousePresionado() {
    minijuego.mousePresionado();
  }
}
