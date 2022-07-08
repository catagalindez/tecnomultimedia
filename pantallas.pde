void pantallas () {

  if (pantalla == 0) {
    menu();
  } else if (pantalla == 1) {
    primerMapa();
    image (img[0], 0, 0, width, height);
  } else if (pantalla == 2) {
    segundoMapa();
    image (img[2], 0, 0, width, height);
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
  background (45, 20, 50);
  pushStyle ();
  textAlign (CENTER);
  text ("Casa oscura \n\n por: Catalina Galindez\n\n\n Inspirado por:  \n -The Witch House \n -AliceMare", width/2, height/3-height/20);
  textSize (15);
  text ("Menú", width-width/4, height-height/12);
  popStyle ();
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
  background (45, 20, 50);
  pushStyle ();
  textAlign (CENTER);
  fill (200);
  textSize (50);
  text ("¡Escapaste!", width/2, 200);
  textSize (15);
  fill (100);
  text ("Aunque... \n ¿puede ser que algo te haya seguido?", width-width/3, 300);
  textSize (15);
  text ("Menú", width-width/4, height-height/12);
  popStyle ();
}

void perdiste () {
  background (45, 20, 50);
  pushStyle ();
  textAlign (LEFT);
  fill (100);
  textSize (30);
  text ("Quienes roban...\n pagan", width/10, 300);
  textSize (15);
  text ("Sé más rápido la próxima", width/10, 400);
  textSize (15);
  text ("Menú", width-width/4, height-height/12);
  popStyle ();
}
