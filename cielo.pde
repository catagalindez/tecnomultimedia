class Cielo {
  Estrella estrellas [];
  int numMaxEstrellas = 50;

  Cielo() {
    estrellas = new Estrella [numMaxEstrellas];
    for (int i = 0; i < numMaxEstrellas; i++) {
      estrellas[i] = new Estrella(round(random(0, width)), round(random(0, height-height/3)), random(1, 3));
    }
  }

  void dibujar () {
    cieloNocturno();
    generarEstrellas();
  }

  void cieloNocturno() {
    pushStyle();
    noStroke();
    fill(65, 44, 70);
    rect(0, 0, width, height);
    popStyle();
  }

  void generarEstrellas () { 
    for (int i = 0; i < numMaxEstrellas; i++) {
      estrellas[i].dibujar();
    }
  }

  void teclaPresionada () {
    if (keyCode == LEFT) {
      for (int i = 0; i < numMaxEstrellas; i++) {
        estrellas[i].alteroVelocidadDerecha();
      }
    }
    if (keyCode == RIGHT) {
      for (int i = 0; i < numMaxEstrellas; i++) {
        estrellas[i].alteroVelocidadIzquierda();
      }
    }
    if (key == ' ') {
      for (int i = 0; i < numMaxEstrellas; i++) {
        estrellas[i].seDetiene();
      }
    }
  }
}
