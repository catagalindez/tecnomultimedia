class Pantalla {
  Historia historia;
  Minijuego minijuego;
  int numPagina;

  Pantalla() {    
    historia = new Historia();
    minijuego = new Minijuego();
    textSize(30);
  }

  void dibujar() {
    pantallaActual();
  }

  void pantallaActual() {
    dibujarHistoria();
    if (historia.numPagina == 3) {
      minijuego();
    }
    if (minijuego.perdiste()== true) {
      perdiste();
    }
    if (minijuego.ganaste()==true) {
      ganaste();
    }
  }

  void inicio() {
    fill(20);
    text("inicio", 100, 100);
  }

  void creditos() {
    fill(20);
    text("creditos", 100, 100);
  }

  void dibujarHistoria() {
    historia.dibujar(numPagina);
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
    historia.mousePresionado();
    minijuego.mousePresionado();
  }
}
