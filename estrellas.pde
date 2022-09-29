class Estrella {
  float posX;
  int posY;
  float diam;
  float vel = -.01;

  Estrella(float _posX, int _posY, float _diam) {
    posX = _posX;
    posY = _posY;
    diam = _diam;
  }

  void dibujar() {
    reaparecerEstrella();
    pushStyle();
    noStroke();
    fill(200, 195, 195);
    circle (posX+=vel, posY, diam);
    popStyle();
  }

  void reaparecerEstrella() {
    if (seMueveALaIzquierda() == true && posX <= -3) {
      posX = width+3;    
      posY =round(random(0, height-height/3));
      diam =random(1, 3);
    } else if (seMueveALaIzquierda() == false && posX >= width+3) {
      posX = -3;   
      posY =round(random(0, height-height/3));      
      diam =random(1, 3);
    }
  }

  boolean seMueveALaIzquierda() {
    if (vel <= 0) {
      return true;
    } else {
      return false;
    }
  }

  void alteroVelocidadDerecha () {
    vel += .01;
  }

  void alteroVelocidadIzquierda () {
    vel -= .01;
  }
  
   void seDetiene () {
    vel = 0;
  }
}
