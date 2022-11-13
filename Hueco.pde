class Hueco {
  Raton raton;
  int cantRatonesX = 3;
  int cantRatonesY = 2;
  int Ratones = 1;
  float posX;
  float posY;
  float tam = height/4;

  Hueco(float posX_, float posY_) {
    /*ratones = new Raton[cantRatonesX][cantRatonesY];
     for (int i = 0; i < cantRatonesX; i++) {
     for (int j = 0; j < cantRatonesY; j++) {
     int k = round (map(i, 0, cantRatonesX, 0+width/4, width));
     int l = round (map(j, 0, cantRatonesY, 0+height/4+height/15, height));
     ratones [i][j] = new Raton(k, l);
     }
     }*/
    posX = posX_;
    posY = posY_;
  }

  void dibujar() {
    circle (posX, posY, tam);
    if (raton != null) {
      dibujarRaton();
    }
  }

  void dibujarRaton() {
    raton.dibujar();
  }

  void mousePresionado() {
  }
}
