class Pantalla {
  Historia historia;
  Minijuego minijuego;
  Boton boton;
  int numPagina;
  int numPantalla;
  PImage inicioImg;
  boolean reinicio= false;
  int creditosPosY = height+40;
  int creditosPosY2 = height+100;
  int creditosPosY3 = height+260;
  int creditosPosY4 = height+320;

  Pantalla() {    
    historia = new Historia();
    minijuego = new Minijuego();
    boton = new Boton();
    textSize(30);
    inicioImg = loadImage("duerme.png");
  }

  void dibujar() {
    background(255);
    pantallaActual();
  }

  void pantallaActual() {
    pantalla();
    if (historia.jugar==true) {
      minijuego();
      musicaHistoria.stop();
      if (!musicaMinijuego.isPlaying()) {
        musicaMinijuego.loop();
      }
    }
  }


  void inicio() {
    image(inicioImg, 0, 0);
    boton.boton4("Inicio");
    boton.boton5("Créditos");
  }

  void creditos() {
    println(creditosPosY);
    pushStyle();
    background(255);
    tint(255, 100);
    image(inicioImg, 0, 0);
    fill(25);
    textAlign (CENTER);
    textSize(30);
    text("Créditos", width/2, creditosPosY--);
    textSize(20);
    text("Inspirado por los libros de Crea tu propia aventura \n Y por mi gato, Luther \n Código, ilustraciones e historia por Catalina Galindez \n Tecno Multimedia I - 2022",width/2,creditosPosY2--);
    textSize(30);
    text("Sonido",width/2,creditosPosY3--);
    textSize(20);
    text("coffee and herbs - sunsetflowerarray \n Ragtime Piano - M. Kendree Miller \n UI Click - Ranner \n Cat Purr Meow - EdR", width/2, creditosPosY4--);
    popStyle();
    
    if(creditosPosY<-400){
      creditosPosY = height+40;
    }
    if(creditosPosY2<-330){
      creditosPosY2 = height+100;
    }
    if(creditosPosY3<-180){
      creditosPosY3 = height+260;
    }
    if(creditosPosY4<-110){
      creditosPosY4 = height+320;
    }
    
    boton.boton3("Menú");
  }

  void dibujarHistoria() {
    historia.dibujar(numPagina);
  }



  void pantalla() {
    musicaHistoria.amp(0.4);
    if (numPantalla == 0) {
      inicio();
      if (!musicaHistoria.isPlaying()) {
        musicaHistoria.loop();
        musicaMinijuego.stop();
      }
    }
    if (numPantalla == 1) {
      creditos();
    }
    if (numPantalla == 2) {
      dibujarHistoria();
    }
    if (numPantalla == 3) {
      minijuego();
    }
  }

  void minijuego() {
    minijuego.dibujar();
  }

  void mousePresionado() {
    historia.mouseClicked();
    minijuego.mousePresionado();
    //inicio a historia
    if (numPantalla==0 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY4 && mouseY <=boton.posY4+60) {
      numPantalla = 2;
      click.play();
    } 
    //inicio a creditos
    if (numPantalla==0 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY5 && mouseY <=boton.posY5+60) {
      numPantalla = 1;
      click.play();
    }
    //creditos a inicio
    if (numPantalla==1 &&
      mouseX >=boton.posX && mouseX <=boton.posX+200 &&
      mouseY >=boton.posY3 && mouseY <=boton.posY3+60) {
      numPantalla = 0;
      click.play();
    }
    //final a inicio
    if (minijuego.perdiste() == true || minijuego.ganaste() == true) {
      if (mouseX >=boton.posX && mouseX <=boton.posX+200 &&
        mouseY >=boton.posY3 && mouseY <=boton.posY3+60) {
        if (reinicio==false) {
          click.play();
          reinicio = true;
          reiniciar();
        }
      }
      reinicio = false;
    }
    if (historia.reinicio==true) {
      reiniciar();
    }
  }

  void reiniciar() {
    minijuego.reiniciar();
    numPantalla = 0;
    numPagina = 0;
    historia.numPagina = 0;
    historia.jugar = false;
    historia.reinicio = false;
  }
}
