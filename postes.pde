class Poste {
  float posX = width;
  float _posX = width/2;
  int posY = 330;
  int ancho = 75;
  int alto = height;
  int vel = -25; // velodidad de postes de seguridad
  float _vel = -20;  //velocidad de postes altos
  int BarraPosY = 350;
  int BarraAlto = 45;

  Poste () {
  }

  void dibujar () {
    dibujarPosteAlto();
    dibujarBarra();
    dibujarPoste();
  }

  void dibujarPoste () {
    PosteVuelveAlComienzo();
    pushStyle ();
    noStroke ();
    fill (62, 20, 68);
    rect(posX+=vel, posY, ancho, alto);
    popStyle();
  }

  void dibujarPosteAlto () {
    pushStyle ();
    noStroke ();
    fill (70, 20, 68);
    rect(_posX+=_vel, 0, 50, height);
    popStyle();
  }

  void dibujarBarra() {
    pushStyle ();
    noStroke ();
    fill (62, 20, 68);
    rect(0, BarraPosY, width, BarraAlto);
    popStyle();
  }

  void PosteVuelveAlComienzo () {
    if (seMueveALaIzquierda() == true && posX <= -400) {
      posX = width;
    } else if (seMueveALaIzquierda() == false && posX >= width) {
      posX = -400;
    }
    if (seMueveALaIzquierda() == true && _posX <= -225) {
      _posX = width;
    } else if (seMueveALaIzquierda() == false && _posX >= width) {
      _posX = -225;
    }
  }

  void AlteroVelocidadDerecha () {
    _vel += 20;
    vel += 25;
  }

  void AlteroVelocidadIzquierda () {
    _vel -=20;
    vel -= 25;
  }
  
  void seDetiene (){
    _vel = 0;
    vel = 0;
  }

  boolean seMueveALaIzquierda() {
    if (vel <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
