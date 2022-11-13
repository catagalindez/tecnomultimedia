class Raton{
  float posX;
  float posY;
  float tam = height/5;
  
  Raton(float posX_, float posY_){
    posX = posX_;
    posY = posY_;
  }

  void dibujar(){
    pushStyle();
    fill(25);
    circle (posX,posY,tam);
    popStyle();
  }

}
