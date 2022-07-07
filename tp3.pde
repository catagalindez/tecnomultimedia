int cantColumnas = 25;
int cantFilas = 25;
int anchoCuadro, altoCuadro;
int [] [] Grilla;
int posX, posY;
int pantalla = 0;
boolean embrujado = false;
int cuenta;

void setup () {

  size (500, 500);
  Grilla = new int [cantColumnas] [cantFilas];
  anchoCuadro = width/cantColumnas;
  altoCuadro = height/cantFilas;
  cuenta = 900;

  posX = 12;
  posY = 22;
}

void draw () {

  background (200);
  pantallas();
  dibujarBasePersonaje ();
  escape ();
  
  println (embrujado+ " tiempo: " +cuenta+ " pantalla: " + pantalla);
}

//mapa1: X12 Y23
//mapa2: X12 Y21
