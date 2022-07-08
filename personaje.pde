void dibujarBasePersonaje () {

  Grilla [posX] [posY] = 2;
}

void personaje () {

  int X = round (map (posX, 0, 25, 0, width));
  int Y = round (map (posY, 0, 25, 0, width));
  image (sprite, X, Y, anchoCuadro, altoCuadro);
}
