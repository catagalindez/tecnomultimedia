void pantallas () {

  if (pantalla == 0) {
    menu();
  } else if (pantalla == 1) {
    primerMapa();
  } else if (pantalla == 2) {
    segundoMapa();
  } else if (pantalla == 3) {
    creditos();
  } else if (pantalla == 4) {
    ganaste ();
  } else if (pantalla == 5) {
    perdiste ();
  }
}



void menu () {

  background (45, 20, 50);
  pushStyle ();
  fill (200);
  rect (width/4, height/4+height/24, width/2, height/8);
  rect (width/4, height/2+height/12, width/2, height/8);
  textAlign (CENTER);
  fill (50);
  textSize (20);
  text ("Comenzar", width/2, height/4+height/8-height/200);
  text ("Créditos", width/2, height/2+height/8+height/24-height/200);
  popStyle ();
}

void creditos () {
  text ("creditos aqui", 100, 100);
}

void primerMapa () {
  dibujarGrillaGeneral();
  dibujarPrimerGrilla();
}

void segundoMapa () {
  dibujarGrillaGeneral();
  dibujarSegundaGrilla ();
}

void ganaste () {
  background (200);
  text ("ganaste :)", 100, 100);
}

void perdiste () {
  background (200);
  text ("perdiste :(", 100, 100);
}
