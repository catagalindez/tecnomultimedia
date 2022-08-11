void dibujarBasePersonaje () {

  Grilla [posX] [posY] = 2;
}

void personaje (float anchoPersonaje, float altoPersonaje) {

  int X = round (map (posX, 0, 25, 0, width));
  int Y = round (map (posY, 0, 25, 0, width));
  pushStyle();
  tint(oscuridadPersonaje);
  image (sprite, X-anchoCuadro/2, Y-altoCuadro-altoCuadro/8, anchoPersonaje, altoPersonaje);
  popStyle();
}
