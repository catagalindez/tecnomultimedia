//Catalina Galindez 80120/9
//Comisión 4
//link yt: https://youtu.be/_EEbAxWZd5c

Paisaje paisaje;

void setup() {
  size(800, 400);
  paisaje = new Paisaje();
}

void draw () {
  paisaje.dibujar();
}

void keyPressed (){
  paisaje.teclaPresionada();
}
