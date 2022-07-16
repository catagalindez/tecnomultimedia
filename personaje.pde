void dibujarBasePersonaje () {

  Grilla [posX] [posY] = 2;
}

void personaje () {

  int X = round (map (posX, 0, 25, 0, width));
  int Y = round (map (posY, 0, 25, 0, width));
  pushStyle();
  tint(oscuridad2);
  image (sprite, X-anchoCuadro/2, Y-altoCuadro-altoCuadro/8, anchoCuadro+anchoCuadro, altoCuadro+altoCuadro);
  popStyle();
}
