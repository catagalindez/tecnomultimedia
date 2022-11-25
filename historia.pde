class Historia {
  PImage [] img = new PImage [9];
  int numImagenes = 9;
  int numPagina;
  boolean jugar = false;
  boolean reinicio = false;
  Boton boton;

  Historia() {
    boton = new Boton();
    for (int i = 0; i < numImagenes; i++){
      img[i] = loadImage("historia"+i+".png");
    }
  }

  void dibujar(int numPagina) {
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
    if (numPagina == 3) {
      jugar = true;
    }
    if (numPagina == 4) {
      buscarSol();
    }
    if (numPagina == 5) {
      solEnVentana();
    }
    if (numPagina == 6) {
      solEnPiso();
    }
    if (numPagina == 7) {
      buscarJuguete();
    }
    if (numPagina == 8) {
      pelotita();
    }
    if (numPagina == 9) {
      caja();
    }
  }

  void gatoDuerme() {
    background(255);
    fill(20);
    image(img[0], 0, 0);
    boton.boton1("Buscar sol");
    boton.boton2("Buscar comida");
    boton.boton3("Buscar juguete");
  }

  void buscarComida() {
    background(255);
    fill(20);
    image(img[7], 0, 0);
    text("¿Qué es eso en la comida?", 450, 300);
    boton.boton1("Investigar");
  }

  void hayRatonesEnComida() {
    background(255);
    fill(20);
    image(img[8], 0, 0);
    boton.boton2("¡Cazar!");
    boton.boton3("Hacer otra cosa");
  }

  void buscarSol() {
    background(255);
    fill(20);
    image(img[1], 0, 0);
    boton.boton4("En la ventana");
    boton.boton5("En el piso");
  }

  void solEnVentana() {
    background(255);
    fill(20);
    image(img[2], 0, 0);
    boton.boton3("Menú");
  }

  void solEnPiso() {
    background(255);
    fill(20);
    image(img[3], 0, 0);
    boton.boton3("Menú");
  }

  void buscarJuguete() {
    background(255);
    fill(20);
    image(img[4], 0, 0);
    boton.boton1("Buscar pelota");
    boton.boton2("¡Una caja!");
  }

  void pelotita() {
    background(255);
    fill(20);
    image(img[5], 0, 0);
    boton.boton3("Menú");
  }

  void caja() {
    background(255);
    fill(20);
    image(img[6], 0, 0);
    boton.boton3("Menú");
  }

  void mouseClicked() {
    mousePresionado();
  }

  void mousePresionado() {
    //inicio a sol
    if (numPagina == 0 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY1 && mouseY <=boton.posY1+60) {
      numPagina = 4;
    } 
    //inicio a comida
    if (numPagina == 0 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY2 && mouseY <=boton.posY2+60) {
      numPagina = 1;
    } 
    //inicio a juguete
    if (numPagina == 0 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY3 && mouseY <=boton.posY3+60) {
      numPagina = 7;
    } 
    //comida investiga
    if (numPagina == 1 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY1 && mouseY <=boton.posY1+60) {
      numPagina = 2;
    }
    //investiga a cazar
    if (numPagina == 2 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY2 && mouseY <=boton.posY2+60) {
      numPagina = 3;
    }
    //investiga a inicio
    if (numPagina == 2 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY3 && mouseY <=boton.posY3+60) {
      numPagina = 0;
    }
    //sol a ventana
    if (numPagina == 4 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY4 && mouseY <=boton.posY4+60) {
      numPagina = 5;
    }
    //sol a piso
    if (numPagina == 4 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY5 && mouseY <=boton.posY5+60) {
      numPagina = 6;
    }
    //jueguete pelota
    if (numPagina == 7 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY1 && mouseY <=boton.posY1+60) {
      numPagina = 8;
    }
    //juguete caja
    if (numPagina == 7 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY2 && mouseY <=boton.posY2+60) {
      numPagina = 9;
    }
    //fin a inicio
    if (numPagina == 5 || numPagina == 6 || numPagina == 8 ||numPagina == 9) {
      if (mouseX >=boton.posX && mouseX <=boton.posX+200 &&
        mouseY >=boton.posY3 && mouseY <=boton.posY3+60) {
        reinicio=true;
      }
    }
  }
}
