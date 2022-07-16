//Catalina Galindez 50120/9
//Comisión 4
//VIDEO: https://youtu.be/LDXzs1dtWZA

int cantColumnas = 25;
int cantFilas = 25;
int anchoCuadro, altoCuadro;
int [] [] Grilla;
int posX, posY;
int pantalla = 0;
boolean embrujado = false;
int cuenta;
boolean palabras = false;
PImage sprite;
PImage [] img = new PImage [7];
int posYcreditos;
float oscuridad;
float oscuridad2;


void setup () {

  size (500, 500);
  Grilla = new int [cantColumnas] [cantFilas];
  anchoCuadro = width/cantColumnas;
  altoCuadro = height/cantFilas;
  sprite = loadImage ("sprite.png");
  img[0] = loadImage ("img0.png");
  img[1] = loadImage ("img1.png");
  img[2] = loadImage ("img2.png");
  img[3] = loadImage ("img3.png");
  img[4] = loadImage ("img4.png");
  img[5] = loadImage ("img5.png");
  img[6] = loadImage ("img6.png");

  cuenta = 500;
  posX = 12;
  posY = 23;
  posYcreditos = height+height/12;
  oscuridad = 255;
  oscuridad2 = 255;
}

void draw () {

  background (200);
  pantallas();
  dibujarBasePersonaje ();
  escape ();
  if (pantalla == 1 || pantalla == 2) {
    personaje ();
  }
  if (pantalla == 1) {
    image (img[1], 0, 0, width, height);
  } 
  if (pantalla == 2) {
    image (img[4], 0, 0, width, height);
  }
}
