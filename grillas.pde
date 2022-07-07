void dibujarBasePersonaje () {

  Grilla [posX] [posY] = 2;
}


void dibujarGrillaGeneral () {

  for (int fila = 0; fila < cantFilas; fila++) {
    for (int columna= 0; columna < cantColumnas; columna++) {
      if (Grilla[columna][fila] == 1) {
        fill(50);
      } else if (Grilla[columna][fila] == 2) {
        fill (255, 0, 0);
      } else if (Grilla[columna][fila] == 3) { //puerta 
        fill (255, 155, 0);
      } else if (Grilla[columna][fila] == 4) { //tesoro
        fill (255, 200, 0);
      } else {
        fill(255);
      }

      rect (columna * anchoCuadro, fila * altoCuadro, anchoCuadro, altoCuadro);
    }
  }
}

void dibujarPrimerGrilla () {

  // bloqueo de areas no transitables
  for (int i = 0; i < cantFilas; i++) {
    Grilla [0] [i] = 1;
    Grilla [1] [i] = 1;
    Grilla [2] [8] = 1;
    Grilla [2] [9] = 1;
    Grilla [2] [10] = 1;
    Grilla [3] [14] = 1;
    Grilla [3] [15] = 1;
    Grilla [3] [17] = 1;
    Grilla [3] [18] = 1;
    Grilla [3] [22] = 1;
    Grilla [3] [23] = 1;
    Grilla [cantColumnas-1] [i] = 1;
    Grilla [i] [cantFilas-1] = 1;

    for (int j = 0; j < 5; j++) {
      Grilla [i] [j] = 1;
    }
  }
  for (int i = 14; i < 20; i++) {
    Grilla [2] [i] = 1;
  }
  for (int i = 21; i < 24; i++) {
    Grilla [2] [i] = 1;
  }
  for (int i = 5; i < 17; i++) {
    Grilla [cantColumnas-2] [i] = 1;
  }
  for (int i = 6; i < 10; i++) {
    Grilla [i] [19] = 1;
    int j = round (map (i, 6, 9, 4, 7));
    Grilla [j] [23] = 1;
    int k = round (map (i, 6, 9, 5, 7));
    Grilla [16] [k] =1 ;
  }

  Grilla [6] [5] = 1;
  Grilla [7] [5] = 1;
  Grilla [9] [5] = 1;
  Grilla [10] [5] = 1;
  Grilla [5] [6] = 1;
  Grilla [6] [6] = 1;
  Grilla [7] [6] = 1;
  Grilla [10] [6] = 1;
  Grilla [10] [7] = 1;
  Grilla [5] [7] = 1;
  Grilla [6] [7] = 1;
  Grilla [14] [7] = 1;
  Grilla [15] [7] = 1;
  Grilla [22] [7] = 1;
  Grilla [21] [10] = 1;
  Grilla [22] [10] = 1;
  Grilla [21] [11] = 1;
  Grilla [22] [11] = 1;
  Grilla [20] [20] = 1;
  Grilla [21] [20] = 1;
  Grilla [10] [23] = 1;
  Grilla [14] [23] = 1;
  Grilla [18] [23] = 1;
  Grilla [19] [23] = 1;

  //puerta int
  for (int i = 11; i < 14; i++) {
    Grilla [i] [4] = 3;
  }
}

void dibujarSegundaGrilla () {

  // bloqueo de areas no transitables
  for (int i = 0; i < cantFilas; i++) {
    for (int j = 0; j < 4; j++) {
      Grilla [i] [j] = 1;
    }
    for (int j = 0; j < 2; j++) {        
      Grilla [j] [i] = 1;
    }
    for (int j = 22; j < 25; j++) {
      Grilla [i] [j] = 1;
    }
    for (int j = 23; j < 25; j++) {
      Grilla [j] [i] = 1;
    }
  }
  for (int i = 10; i < cantFilas; i++) {
    Grilla [i] [4] = 1;
  }
  for (int i = 4; i < 7; i++) {
    Grilla [2] [i] = 1;
    Grilla [8] [i] = 1;
  }
  for (int i = 17; i < 20; i++) {
    for (int j = 5; j < 12; j++) {
      Grilla [i] [j] = 1;
    }
  }
  for (int i = 17; i < cantFilas; i++) {
    for (int j = 5; j < 7; j++) {
      Grilla [i] [j] = 1;
      Grilla [20] [7] = 1;
    }
  }
  for (int i = 0; i < 10; i++) {
    Grilla [22] [i] = 1;
  }
  for (int i = 18; i < 20; i++) {
    for (int j = 12; j < 15; j++) {
      Grilla [i] [j] = 1;
      Grilla [17] [14] = 1;
    }
  }
  for (int i = 14; i < cantFilas; i++) {
    for (int j = 20; j < cantColumnas; j++) {
      Grilla [i] [j] = 1;
    }
  }
  for (int i = 0; i < 11; i++) {
    Grilla [i] [21] = 1;
  }
  for (int i = 18; i < cantColumnas; i++) {
    for (int j = 0; j < 4; j++) {
      Grilla [j] [i] = 1;
    }
  }
  for (int i = 0; i < 7; i++) {
    Grilla [i] [18] = 1;
    Grilla [i] [15] = 1;
    Grilla [2] [16] = 1;
  }
  for (int i = 0; i < 5; i++) {
    for (int j = 14; j < 16; j++) {
      Grilla [i] [j] = 1;
      for (int k = 6; k < 8; k++) {
        Grilla [k] [j] = 1;
      }
    }
  }
  for (int i = 4; i < 8; i++) {
    Grilla [i] [6] = 1;
    Grilla [4] [5] = 1;
    Grilla [4] [7] = 1;
  }
  for (int i = 8; i < 13; i++) {
    Grilla [3] [i] = 1;
    for (int j = 3; j < 12; j++) {
      Grilla [j] [12] = 1;
      Grilla [9] [13] = 1;
      Grilla [11] [13] = 1;
      Grilla [10] [11] = 1;
      Grilla [7] [10] = 1;
      Grilla [8] [10] = 1;
    }
  }
  for (int i = 6; i < 15; i++) {
    Grilla [i] [9] = 1;
    Grilla [11] [8] = 1;
    Grilla [11] [7] = 1;
  }
  for (int i = 7; i < 18; i++) {
    Grilla [14] [i] = 1;
    Grilla [13] [7] = 1;
  }
  for (int i = 8; i < 18; i++) {
    Grilla [i] [18] = 1;
  }
  for (int i= 10; i < 14; i++) {
    for (int j = 16; j <18; j++) {
      Grilla [i] [j] = 1;
    }
  }
  for (int i = 15; i < 20; i++) {
    Grilla [i] [17] = 1;
    Grilla [17] [19] = 1;
    Grilla [19] [18] = 1;
  }

  //bloqueo puerta
  for (int i = 11; i < 14; i++) {
    Grilla [i] [22] = 3;
  }

  //bloqueo tesoro
  Grilla [23] [18] = 4;
}
