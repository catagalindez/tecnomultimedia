void escape () {
  if (Grilla[posX+1][posY] ==4) { //medallon
    embrujado = true;
  }


  if (embrujado == true) {
    cuenta--;
    aviso (random(50, 400), random(100, 400));
    oscuridad-=.7;
    oscuridadPersonaje-=.4;
  } 
  if (cuenta <=0) {
    pantalla =5;
    embrujado = false;
    cuenta = 500;
  }
}

void aviso (float UbicacionRandomMin, float UbicacionRandomMax) {
  if ((cuenta%10)==0) {
    palabras = true;
  } else {
    palabras = false;
  }

  if (palabras == true && embrujado == true) {
    ;
    pushStyle ();
    fill(150, 0, 0);
    textSize (25);
    text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
    popStyle ();
    if (cuenta <= 100) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      popStyle ();
    }
    if (cuenta <=200) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      popStyle ();
    }
    if (cuenta <=300) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      popStyle ();
    }
    if (cuenta<=400) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      text ("CORRÉ", UbicacionRandomMin, UbicacionRandomMax);
      popStyle ();
    }
  }
}
