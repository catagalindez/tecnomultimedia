void imagenes (){
 
  if (nextImg) {
    if (imgNum < imgMax){
    imgNum++;
    opacidad= 0;
    white= 255;
    imgPosX= 0-width/4+width/30;
    imgPosY= 0-height/5+height/80;
    imgPosX2= 0+width/12;
    imgPosY2= 0-height/8;
    imgPosX3= 0-width/5;
    imgPosY3= 0-height/8;
  } else {
    imgNum = 0;
    opacidad= 0;
    white= 255;
    imgPosX= 0-width/4+width/30;
    imgPosY= 0-height/5+height/80;
    imgPosX2= 0+width/12;
    imgPosY2= 0-height/8;
    imgPosX3= 0-width/5;
    imgPosY3= 0-height/8;
  }} else {
  }
  
if (imgNum == 0) {
  imagen1 ();
} else if (imgNum== 1) {
  imagen2 ();
} else if (imgNum== 2) {
  imagen3 ();
} else if (imgNum== 3) {
  imagen4 ();
} else if (imgNum== 4) {
  imagen5 ();
} else if (imgNum== 5) {
  imagen6 ();
} else if (imgNum== 6) {
  imagen7 ();
} else if (imgNum== 7) {
  imagen8 ();
} else if (imgNum== 8) {
  imagen9 ();
} else {
  imagen10 ();
}
 
}

void creditos () {
  
  frames++;
  
  
  if (nextPag) {
    frames = 0;
    creditosPosYInicial = height+20;
    creditosPosYInicial2 = height+160;
    nextPag = false;
    
    if (pagCreditos < pagCreditosMax) {
    pagCreditos++;
  } else {
   pagCreditos = 0; 
   white= 255;
   opacidad= 0;
  }
  
  } else {
    
  }
  
if (pagCreditos == 0) {
  titulo1 ();
} else if (pagCreditos == 1) {
  titulo2 ();
} else if (pagCreditos == 2) {
  creditos1 ();
} else if (pagCreditos == 3) {
  creditos2 ();
} else if (pagCreditos == 4) {
  creditos3 ();
} else {
  creditos4 ();
}
  
  println("Pantalla : "+pagCreditos + "   Imagen: "+imgNum);
}

void mousePressed () {
 
    if (pagCreditos>=2
    && mouseX >= 70
    && mouseX <= 925
    && mouseY >= 205
    && mouseY <= 505
    && nextImg == false){
      nextImg = true;
    } else {
      nextPag = true;
    }
  
  println ("Click en X:" + mouseX + " Y:" + mouseY);
}

void mouseMoved (){
 println ("Mouse captado en X:"+mouseX+" Y:"+mouseY); 
}
