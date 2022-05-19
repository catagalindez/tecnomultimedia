//GALIDEZ, Catalina 80120/9
//Comision 4B (online)

//  USO:
//  Para Saltar pantalla: Click en cualquier parte. Después de títulos, click fuera de imagen
//  Para Saltar imagen: después de títulos, click en imagen 

int frames;
int pagCreditos;
int pagCreditosMax;
int imgNum;
int imgMax;
int opacidad;
int white;

boolean nextPag = false;
boolean nextImg = false;

int creditosPosXInicial;
int creditosPosXInicial2;
int creditosPosXInicial3;
int creditosPosYInicial;
int creditosPosYInicial2;

float imgPosX;
float imgPosY;
float imgPosX2;
float imgPosY2;
float imgPosX3;
float imgPosY3;
float imgAncho;
float imgAlto;

//DATA
PFont rodinBold;
PFont rodinBoldItalic;
PImage difuminado;
PImage Impa;
PImage ImpasHouse;
PImage Mipha;
PImage Revali;
PImage Urbosa;
PImage Garuk;
PImage Zelda;
PImage Sword;
PImage Teba;
PImage Sidon;


void setup () {

  size (1280, 720);
  pagCreditosMax = 5;
  imgMax = 9;
  white=255;
  
  creditosPosXInicial = width/2;
  creditosPosXInicial2 = width/2+width/6;
  creditosPosXInicial3 = width/2+width/3;
  creditosPosYInicial = height;
  creditosPosYInicial2 = height+160;
  
  imgPosX= 0-width/4+width/30;
  imgPosY= 0-height/5+height/80;
  imgPosX2= 0+width/12;
  imgPosY2= 0-height/8;
  imgPosX3= 0-width/5;
  imgPosY3= 0-height/8;
  
  imgAncho= width;
  imgAlto= height;
  
//DATA
  rodinBold = createFont ("rodinBold.TTF", 15);
  rodinBoldItalic = createFont ("rodinBoldItalic.TTF", 20);
  difuminado = loadImage ("difuminado.png");
  Impa = loadImage ("Impa.png");
  ImpasHouse = loadImage ("ImpasHouse.png");
  Mipha = loadImage ("Mipha.png");
  Revali = loadImage ("Revali.png");
  Urbosa = loadImage ("Urbosa.png");
  Garuk = loadImage ("Garuk.png");
  Zelda = loadImage ("Zelda.png");
  Sword = loadImage ("Sword.png");
  Teba = loadImage ("Teba.png");
  Sidon = loadImage ("Sidon.png");
  
}

void draw () {
  
  background (0);
  if (pagCreditos >=2){
    imagenes();
    //DIFUMINADO
    image(difuminado, 0, 0, width, height);
    // vv SI SE TRABA MUCHO CON LA IMG "difuminado", ESTOS RECT SE UBICAN ALREDEDOR DE LA MISMA AREA vv
    /* pushStyle ();
    fill (0);
    stroke (0);
    strokeWeight (1);
    rect (0, 0, 70, height);
    rect (0, 0, width, 205);
    rect (925, 0, width, height);
    rect (0, 505, width, height);
     popStyle (); */

  } else {
  }
  creditos ();
  
}
