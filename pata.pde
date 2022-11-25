class Pata {
  color relleno= 255;
  int espera;
  PImage imgPata;
  PImage imgPataAgarra;

  Pata() {
    imgPata = loadImage ("pata.png");
    imgPataAgarra = loadImage ("pata agarra.png");
  }

  void dibujar() {
    pushStyle();
    imageMode(CENTER);
    if(relleno==255){
      image(imgPata,mouseX,mouseY);
    } else if(relleno == 100){
      image(imgPataAgarra,mouseX,mouseY);
    }    
    //fill(relleno);
    //circle(mouseX, mouseY, height/20);
    popStyle();
    volverAOrig();
  }

  void mousePresionado() {
    if (relleno==255) {
      relleno=100;
    }
  }

  void volverAOrig() {
    cuenta();
    if (espera>15) {
      relleno=255;
      espera=0;
    }
  }
  
  void cuenta(){
    if (relleno==100){
      espera++;
    }
  }
}
