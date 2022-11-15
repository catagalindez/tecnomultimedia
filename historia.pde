class Historia {
  int numPagina;

  Historia() {
  }

  void dibujar(int numPagina) {
   // numPagina = numPagina_;
    saltaPagina();
  }

  void saltaPagina() {
    if (numPagina == 0) {
      gatoDuerme();
    } 
    if (numPagina == 1) {
      buscarComida();
    }
    if (numPagina == 2) {
      hayRatonesEnComida();
    }
  }

  void gatoDuerme() {
    background(255);
    fill(20);
    text("Gato duerme", 100, 100);
    text("Buscar sol      Buscar comida      Buscar juguete", 100, 500);
  }

  void buscarComida() {
    background(255);
    fill(20);
    text("Busca comida", 100, 100);
    text("¿Qué es eso en la comida?", 400,500);
  }

  void hayRatonesEnComida() {
    background(255);
    fill(20);
    text("Hay ratones en la comida", 100, 100);
    text("¡Caza los ratones!",200,500);
  }

  void buscarSol() {
    background(255);
    fill(20);
    text("Busca sol", 100, 100);
  }

  void buscarJuguete() {
    background(255);
    fill(20);
    text("Busca juguete", 100, 100);
  }

  void mousePresionado() {
    if (numPagina == 0 &&
      mouseX > 200 &&
      mouseX < 400) {
      numPagina = 1;
    } 
    if (numPagina == 1 &&
      mouseX > 400) {
      numPagina = 2;
    }
    if (numPagina == 2 &&
      mouseX > 200 &&
      mouseX < 400) {
      numPagina = 3;
    }
  }
}
