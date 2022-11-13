class Contador {
  int segundos;
  
  Contador(int segundos_) {
    segundos = segundos_;
  }

  void dibujar() {
    cuenta();
    pushStyle();
    fill (25);
    textSize(30);
    text("Tiempo: "+segundos, width-width/4, height/8);
    //println(segundos+ "  " + perdiste());
    popStyle();
  }
  
  void cuenta(){
    if (segundos > 0 && frameCount%60 == 0){
      segundos = segundos - 1;
    }
  }
  
  boolean perdiste() {
    if (segundos > 0) {
      return false;
    } else {
      return true;
    }
  }
}
