void escape () {

  if (embrujado == true) {
    cuenta--;
    aviso ();
    oscuridad-=.7;
    oscuridad2-=.4;
  } 
  if (cuenta <=0) {
    pantalla =5;
    embrujado = false;
    cuenta = 500;
  }
}

void aviso () {
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
    text ("CORRÉ", random(50, 400), random(100, 400));
    popStyle ();
    if (cuenta <= 100) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      popStyle ();
    }
    if (cuenta <=200) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      popStyle ();
    }
    if (cuenta <=300) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      popStyle ();
    }
    if (cuenta<=400) {
      pushStyle ();
      fill(150, 50, 50);
      textSize (25);
      text ("CORRÉ", random(50, 400), random(100, 400));
      text ("CORRÉ", random(50, 400), random(100, 400));
      popStyle ();
    }
  }
}
