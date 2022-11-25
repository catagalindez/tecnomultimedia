class Raton{
  float posX;
  float posY;
  float tam = height/5;
  PImage ratonImg;
  
  Raton(float posX_, float posY_){
    posX = posX_;
    posY = posY_;
    ratonImg = loadImage ("raton.png");
  }

  void dibujar(){
    pushStyle();
    fill(25);
    imageMode(CENTER);
    image(ratonImg,posX,posY);
    //circle (posX,posY,tam);
    popStyle();
  }

}
