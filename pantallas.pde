void pantallas () {

  if (pantalla == 0) {
    menu();
  } else if (pantalla == 1) {
    primerMapa();
  } else if (pantalla == 2) {
    segundoMapa(); 
    if (embrujado == true) {
      pushStyle();
      fill(0);
      noStroke();
      rect(0,0,width,height);
      tint(oscuridad);
      image (img[3], 0, 0, width, height);
      popStyle();
    }
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
  pushStyle();
  tint (110);
  image (img[0], 0, 0, width, height);
  popStyle ();
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
  pushStyle();
  tint (110);
  image (img[0], 0, 0, width, height);
  popStyle ();
  pushStyle ();
  tint(255);
  fill (255);
  textAlign (CENTER);
  text ("Casa oscura \n\n por: Catalina Galindez\n\n\n Inspirado por:  \n The Witch House \n AliceMare \n Walk", width/2, posYcreditos--);
  textSize (15);
  text ("Menú", width-width/8, height-height/12);
  popStyle ();

  if (posYcreditos <= height-height-height/2) {
    posYcreditos = height+height/12;
  }
}

void primerMapa () {
  dibujarGrillaGeneral();
  dibujarPrimerGrilla();
  image (img[0], 0, 0, width, height);
}

void segundoMapa () {
  dibujarGrillaGeneral();
  dibujarSegundaGrilla ();
  image (img[2], 0, 0, width, height);
}

void ganaste () {
  background (45, 20, 50);
  pushStyle ();
  textAlign (CENTER);
  fill (200);
  image (img[5], 0, 0, width, height);
  textSize (15);
  text ("Menú", width-width/8, height-height/12);
  popStyle ();
}

void perdiste () {
  background (45, 20, 50);
  pushStyle ();
  textAlign (LEFT);
  fill (100);
  image (img[6], 0, 0, width, height);
  textSize (15);
  text ("Menú", width-width/8, height-height/12);
  popStyle ();
}
