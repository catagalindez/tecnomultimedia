class Boton {
  PImage botonSuelto;
  PImage botonApretado;
  String queHace;
  int realPosX = 570, realPosY1 = 320, realPosY2 = 390, realPosY3 = 460, realPosY4=180, realPosY5 = 250;
  int posX = realPosX+36, posY1 = realPosY1+18, posY2 = realPosY2+18, posY3 = realPosY3+18, posY4 = realPosY4+18, posY5 = realPosY5+18;

  Boton() {
    botonSuelto = loadImage("boton suelto.png");
    botonApretado = loadImage("boton apretado.png");
  }

  void boton1(String queHace_) {
    queHace = queHace_;
    if (mouseX>=posX && mouseX <= posX+200 &&
      mouseY >= posY1 && mouseY <= posY1+60) {
      image(botonApretado, realPosX, realPosY1);
    } else {
      image(botonSuelto, realPosX, realPosY1);
    }
    pushStyle();
    fill(20);
    textSize(25);
    textAlign(CENTER);
    text(queHace, posX+115, posY1+40);
    popStyle();
  }

  void boton2(String queHace_) {
    queHace=queHace_;
    if (mouseX>=posX && mouseX <= posX+200 &&
      mouseY >= posY2 && mouseY <= posY2+60) {
      image(botonApretado, realPosX, realPosY2);
    } else {
      image(botonSuelto, realPosX, realPosY2);
    }
    pushStyle();
    fill(20);
    textSize(25);
    textAlign(CENTER);
    text(queHace, posX+115, posY2+40);
    popStyle();
  }

  void boton3(String queHace_) {
    queHace=queHace_;
    if (mouseX>=posX && mouseX <= posX+200 &&
      mouseY >= posY3 && mouseY <= posY3+60) {
      image(botonApretado, realPosX, realPosY3);
    } else {
      image(botonSuelto, realPosX, realPosY3);
    }
    pushStyle();
    fill(20);
    textSize(25);
    textAlign(CENTER);
    text(queHace, posX+115, posY3+40);
    popStyle();
  }

  void boton4(String queHace_) {
    queHace=queHace_;
    if (mouseX>=posX && mouseX <= posX+200 &&
      mouseY >= posY4 && mouseY <= posY4+60) {
      image(botonApretado, realPosX, realPosY4);
    } else {
      image(botonSuelto, realPosX, realPosY4);
    }
    pushStyle();
    fill(20);
    textSize(25);
    textAlign(CENTER);
    text(queHace, posX+115, posY4+40);
    popStyle();
  }
  
  void boton5(String queHace_) {
    queHace=queHace_;
    if (mouseX>=posX && mouseX <= posX+200 &&
      mouseY >= posY5 && mouseY <= posY5+60) {
      image(botonApretado, realPosX, realPosY5);
    } else {
      image(botonSuelto, realPosX, realPosY5);
    }
    pushStyle();
    fill(20);
    textSize(25);
    textAlign(CENTER);
    text(queHace, posX+115, posY5+40);
    popStyle();
  }
}
