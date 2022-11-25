class Pata {
  color relleno= 255;
  int espera;

  Pata() {
  }

  void dibujar() {
    pushStyle();
    fill(relleno);
    circle(mouseX, mouseY, height/20);
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
