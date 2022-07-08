//Catalina Galindez 50120/9
//Comisión 4
//Video: https://youtu.be/G5lx8ss419U

int cantColumnas = 25;
int cantFilas = 25;
int anchoCuadro, altoCuadro;
int [] [] Grilla;
int posX, posY;
int pantalla = 0;
boolean embrujado = false;
int cuenta;
PImage sprite;
PImage [] img = new PImage [5];


void setup () {

  size (500, 500);
  Grilla = new int [cantColumnas] [cantFilas];
  anchoCuadro = width/cantColumnas;
  altoCuadro = height/cantFilas;
  cuenta = 900;
  sprite = loadImage ("sprite.png");
  img[0] = loadImage ("img0.png");
  img[1] = loadImage ("img1.png");
  img[2] = loadImage ("img2.png");
  img[3] = loadImage ("img3.png");
  img[4] = loadImage ("img4.png");

  posX = 12;
  posY = 22;
}

void draw () {

  background (200);
  pantallas();
  dibujarBasePersonaje ();
  personaje ();
  escape ();

  println (embrujado+ " tiempo: " +cuenta+ " pantalla: " + pantalla);
}

//mapa1: X12 Y23
//mapa2: X12 Y21
