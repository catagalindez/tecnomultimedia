import processing.sound.*;

SoundFile musicaHistoria, musicaMinijuego, purrMeow, click;
Juego juego;

void setup() {
  size(900, 600);
  juego = new Juego();
  musicaHistoria = new SoundFile(this, "audio/coffee and herbs.mp3");
  musicaMinijuego = new SoundFile(this, "audio/ragtime.mp3");
  click = new SoundFile(this, "audio/click.mp3");
  purrMeow = new SoundFile(this, "audio/purr meow.mp3");
}

void draw() {
  background(255);
  juego.dibujar();
}

void mousePressed() {
  juego.mousePresionado();
}
