class Paisaje {
  Cielo cielo;
  Edificios [] edificio;
  EdificiosA [] edificioA;
  Poste poste;
  int cantEdificiosFondo = 10;
  int cantEdificiosA = 5;

  Paisaje() {
    cielo = new Cielo();
    edificio = new Edificios [cantEdificiosFondo];
    edificioA = new EdificiosA [cantEdificiosA];
    poste = new Poste();
    for (int i = 0; i < cantEdificiosFondo; i++) {
      int j = round(map (i, 0, 9, 0, width));
      edificio[i] = new Edificios(j);
    }
    for (int i = 0; i < cantEdificiosA; i++) {
      int j = round(map (i, 0, 5, 0, width));
      edificioA[i] = new EdificiosA(j);
    }
  }

  void dibujar() {
    background (156, 51, 81);
    cielo.dibujar();
    for (int i = 0; i < cantEdificiosFondo; i++) {
      edificio[i].dibujar();
    }
    for (int i = 0; i < cantEdificiosA; i++) {
      edificioA[i].dibujar();
    }
    poste.dibujar();
  }


  void teclaPresionada() {
    if (keyCode == LEFT) {
      for (int i = 0; i < cantEdificiosFondo; i++) {
        edificio[i].AlteroVelocidadDerecha();
      }
      for (int i = 0; i < cantEdificiosA; i++) {
        edificioA[i].AlteroVelocidadDerecha();
      }
      poste.AlteroVelocidadDerecha();
    }
    if (keyCode == RIGHT) {
      for (int i = 0; i < cantEdificiosFondo; i++) {
        edificio[i].AlteroVelocidadIzquierda();
      }
      for (int i = 0; i < cantEdificiosA; i++) {
        edificioA[i].AlteroVelocidadIzquierda();
      }
      poste.AlteroVelocidadIzquierda();
    }
    if (key == ' ') {
      for (int i = 0; i < cantEdificiosFondo; i++) {
        edificio[i].seDetiene();
      }
      for (int i = 0; i < cantEdificiosA; i++) {
        edificioA[i].seDetiene();
      }
      poste.seDetiene();
    }    
    cielo.teclaPresionada();
  }
}
