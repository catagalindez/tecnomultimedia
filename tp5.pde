Juego juego;


void setup(){
  size(900,600);
  juego = new Juego();
}

void draw(){
  background(255);
  juego.dibujar();
}

void mousePressed(){
  juego.mousePresionado();
}
