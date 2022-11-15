class Hueco {
  Raton raton;
  int cantRatonesX = 3;
  int cantRatonesY = 2;
  int Ratones = 1;
  float posX;
  float posY;
  float tam = height/4;
  int puntaje = 0;
  boolean atrapaRaton = false;

  Hueco(float posX_, float posY_) {
    posX = posX_;
    posY = posY_;
  }

  void dibujar() {
    hayRaton();
    pushStyle();
    fill(255);
    circle (posX, posY, tam);
    popStyle();
    if (raton != null) {
      dibujarRaton();
    }
  }

  boolean hayRaton() {
    return raton != null;
  }

  void dibujarRaton() {
    raton.dibujar();
  }

  void mousePresionado() {
    if(dist(mouseX,mouseY,posX,posY)<tam){
      if (hayRaton() == true){
        atrapaRaton = true;
      }
    }
  }
  
  void resetAtrapa(){
    if (atrapaRaton == true){
      atrapaRaton = false;
    }
  }
  
}
