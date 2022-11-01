Juego juego;
Minijuego minijuego;

void setup(){
  size(900,600);
  juego = new Juego();
  minijuego = new Minijuego();
}

void draw(){
  minijuego.dibujar();
}
