//CATALINA GALINDEZ 80120/9
//COMISION 4
//VIDEO: https://www.youtube.com/watch?v=t1dIPmvDWsI

int C = 0;
int C2 = 255;
int R = 0;
int G = 0;
int B = 0;
int R2 = 255;
int G2 = 255;
int B2 = 255;
float modificadorX1 = width/2;
float modificadorX2 = width/2-width/3;
float modificadorY1 = height/2;
float modificadorY2 = height-height/3;
float modificadorY3 = height+height;
float modificadorY4 = height+height+height+height+height+height+height;
float MouseX1;
float MouseX2;
float MouseY1;
float MouseY2;
int contador = 0;

void setup () {
 
  size (500,500);

}

void draw () {
  
  for (int i = 0; i < width/2; i += width/30) {
      
      float MouseX1 = map (mouseX, 0, width, width/200, width/4+width/20);
      float MouseX2 = map (mouseX, 0, width, width-width/8, width/2+width/20);
      float MouseY1 = map (mouseY, 0, height, height/200, height/4+height/35);
      float MouseY2 = map (mouseY, 0, height, height/2, height-height/4);
      float X1 = map (i, 0, width/2, 0, modificadorX1+MouseX1);
      float X2 = map (i, 0, width/2, width/2, modificadorX2+MouseX2);
      float Y1 = map (i, 0, width/2, 0, modificadorY1+MouseY1);
      float Y2 = map (i, 0, width/2, height/2, modificadorY2+MouseY2);
      float Y3 = map (i, 0, width/2, 0, modificadorY3-MouseY1);
      float Y4 = map (i, 0, width/2, height/2, modificadorY4-MouseY2);
      float W = map (i, 0, width/2, width/2, width/200);
      float H = map (i, 0, width/2, height/2, height/200);
      float F = map (i, 0, width/2, 0, 16);
      int E = round(F);
      
      if ((E%2) == 0 && C == 0 && C2 == 255){
        R = 0;
        G = 0;
        B = 0;
        R2 = 255;
        G2 = 255;
        B2 = 255;
      } else if ((E%2) != 0 && C == 0 && C2 == 255) {
        R = 255;
        G = 255;
        B = 255;
        R2 = 0;
        G2 = 0;
        B2 = 0;
      } if ((E%2) == 0 && C ==255 && C2 == 0) {
        R = 255;
        G = 255;
        B = 255;
        R2 = 0;
        G2 = 0;
        B2 = 0;
      } else if ((E%2) != 0 && C == 255 && C2 == 0){
         R = 0;
        G = 0;
        B = 0;
        R2 = 255;
        G2 = 255;
        B2 = 255;
      } else if (C != 0 && C != 255 && C2 != 0 && C2 != 255){
        R = round(random(50,255));
        G = round(random(50,255));
        B = round(random(50,255));
        R2 = round(random(50,255));
        G2 = round(random(50,255));
        B2 = round(random(50,255));
      }
      
      
      
      noStroke ();
      fill (R,G,B);
      //arriba izquierda
      rect (X1, Y1, W, H);
       //abajo derecha
      rect (X2, Y4, W, H);
      
      fill (R2,G2,B2);
      //abajo izquierda
      rect (X1, Y2, W, H);
      //arriba derecha
      rect (X2, Y3, W, H);
    
    
  }
  
  if (contador >= 1){
    contador++;} else {
    }
  if (contador == 200) {
    println ("Pssst, ¡Podés detener los colores apretando R!");
  } else {
  }
  
}

//CAMBIAR FILL
void mousePressed () {
  if (mouseButton == LEFT && C==0 && C2==255) {
   C = 255;
   C2 = 0;
   println ("Click izquierdo");
  } else if (mouseButton == LEFT && C==255 && C2==0) {
    C = 0;
    C2 = 255;
    println ("Click izquierdo");
  }
  
  if (mouseButton == RIGHT){
    C = round(random(1,254));
    C2= round(random(1,254));
    println ("Click derecho, ¡cuidado con los ojos!");
    contador++;
  } else {
  }
}


//RESTART
void keyPressed (){
  if (key == 'R' || key == 'r'){
    C=0;
    C2=255;
    contador = 0;
    println ("¡Reset!");
  } else {
  }
}
