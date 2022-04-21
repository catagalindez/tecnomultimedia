void setup ( ) {
 
  size (600, 600);
  background (29, 28, 32);
  textSize (height/30);
  
}

void draw ( ) {
  
  //cielo
  noStroke ();
  fill (55, 43, 55);
  rect (0, height/7,width,height);
  
  fill (88, 41, 73);
  rect (0, height/4-height/30, width, height);
  
  fill (103, 39, 72);
  rect(0,height/4+height/30,width,height);
  
  fill (114, 39, 72);
  rect (0, height/4+height/12,width,height);
  
  fill (156, 51, 81);
  rect (0,height/4+height/8,width,height);
  
  fill (170, 71, 53);
  rect (0,height/2-height/15,width,height);
  
  fill (220, 142, 56);
  rect (0,height/2+height/30,width,height);
  
  //lineas cielo
  strokeWeight (height/150);
  stroke (37, 32, 39);
  line (0, height/15, width/2+width/15, height/15);
  line (width/2+width/12, height/15, width-width/3-width/100, height/15);
  line (width-width/4-width/15, height/15, width, height/15);
  
  strokeWeight (height/200);
  stroke (42, 35, 43);
  line (0, height/9+height/90, width, height/9+height/90);
  
  strokeWeight (height/300);
  stroke (29, 28, 32);
  line (0, height/10+height/25+height/200, width, height/10+height/25+height/200);
  line (0, height/6-height/70, width/6, height/6-height/70);
  line (width/3, height/6-height/70, width, height/6-height/70);
  line (width/4, height/6-height/70, width/5, height/6-height/70);
  
  stroke (88, 41, 73);
  line (0, height/5, width, height/5);
  
  stroke (103, 39, 72);
  line (0, height/4+height/40, width, height/4+height/40);
  
  strokeWeight (height/200);
 
  stroke (29, 28, 32);
  line (0, height/6, width, height/6);
  
  stroke (55, 43, 55);
  line (0,height/4-height/40,width,height/4-height/40);
  line (0,height/4-height/120,width-width/10,height/4-height/120);
  line (width-width/20,height/4-height/120,width,height/4-height/120);
  
  stroke (88, 41, 73);
  line (0, height/4+height/25,width,height/4+height/25);
  
  stroke (103, 39, 72);
  line (0,height/3+height/120,width/20,height/3+height/120);
  line (width/15,height/3+height/120,width/5,height/3+height/120);
  line (width/5+width/50,height/3+height/120,width/5+width/10,height/3+height/120);
  line (width/3,height/3+height/120,width,height/3+height/120);
  
  stroke (123, 41, 74);
  line (0, height/4+height/8+height/120, width, height/4+height/8+height/120);
  
  stroke (132, 44, 76);
  line (width/3, height/4+height/9+height/120, width, height/4+height/9+height/120);
  line (width/4, height/4+height/9+height/120, width/4+width/30, height/4+height/9+height/120);
  line (0, height/4+height/9+height/120, width/4-width/30, height/4+height/9+height/120);
  
  strokeWeight (height/150);
  stroke (156, 51, 81);
  line (0, height/2-height/18, width/4+width/15, height/2-height/18);
  line (width/4+width/8, height/2-height/18, width/2+width/8, height/2-height/18);
  line (width-width/4-width/20, height/2-height/18, width-width/4-width/25, height/2-height/18);
  line (width-width/4-width/200, height/2-height/18, width, height/2-height/18);
  
  strokeWeight (height/200);
  stroke (170, 71, 53);
  line (0, height/2-height/12-height/300, width, height/2-height/12-height/300);
  line (0, height/2-height/14-height/400, width, height/2-height/14-height/400);
  
  stroke (194, 105, 54);
  line (0, height/2+height/100, width, height/2+height/100);
  
  strokeWeight (height/150);
  stroke (208, 124, 55);
  line (0, height/2+height/40, width, height/2+height/40);
  
  strokeWeight (height/200);
  stroke (233, 185, 95);
  line (0, height-height/4-height/6+height/100, width, height-height/4-height/6+height/100);
  line (width-width/4, height-height/4-height/7+height/300, width, height-height/4-height/7+height/300);
  line (width-width/4, height-height/4-height/7+height/80, width, height-height/4-height/7+height/80);
  
  //sol
  noStroke();
  fill(233, 185, 95);
  circle (width-width/3+width/48,height-height/3+height/200,width/4);
  
  strokeWeight (height/50);
  stroke (228, 169, 67);
  line (width/2, height-height/3-height/20, width-width/4,height-height/3-height/20);
  strokeWeight (height/15);
  line (width/2, height-height/3+height/70, width-width/4,height-height/3+height/70);
  stroke (221,149,55);
  line (width/2, height-height/4-height/30, width-width/4,height-height/4-height/30);
  strokeWeight (height/120);
  line (width/2, height-height/3-height/220, width-width/4,height-height/3-height/220);
  
  stroke (214, 127, 41);
  strokeWeight (height/200);
  line (width/2, height-height/3+height/40, width-width/4,height-height/3+height/40);
  strokeWeight (height/60);
  line (width/2, height-height/3+height/23, width-width/4,height-height/3+height/23);
  line (width/2, height-height/3+height/16+height/400, width-width/4,height-height/3+height/16+height/400);
  
  
  //ciudad bg
  noStroke ();
  fill (216, 90, 103);
  
  rect (0, height/2+height/200,width/4-width/15,height);
  
  rect (0,height/2+height/12,width/3,height);
  
  rect (width/4+width/100,height/2-height/30,width/9,height);
  
  rect (width/2, height-height/3, width/4-width/9, height);
  
  rect (width-width/4-width/20, height/2+height/16,width/8-width/60,height);
  
  rect (width-width/4, height/2+height/8,width/4, height);
  
  //ciudad medio
  noStroke ();
  fill (88, 41, 73);
  
  rect (0, height/4+height/6, width/10, height);
  
  rect (0, height/2+height/20, width/4-width/20, height);
  
  rect (0, height-height/4,width/2-width/6,height);
  
  rect (width/4+width/24, height/2+height/10-height/100, width/3-width/12, height);
  
  rect(width/4+width/11,height/2+height/55,width/12,height);
  
  rect (width/2, height/4+height/20, width/8,height);
  
  rect (width/2+width/8, height-height/4-height/50,width/8,height);
  
  rect (width-width/4,height-height/4+height/50,width,height);
  
  rect (width-width/4+width/50,height/2+height/12,width/8,height);
  
  rect (width-width/5+width/50,height/2-height/12,width/13,height);
  
  rect (width-width/8,height-height/4-height/20,width,height);
  
  rect (width-width/12,height/2+height/20,width,height);
  
  //ciudad medio detalles
  //barandas
  rect (width/4+width/24+width/100, height/2+height/15+height/200, width/3-width/10, height/200);
  rect (width/4+width/17, height/2+height/15+height/200, width/240, height/10);
  rect (width/4+width/17+width/80, height/2+height/15+height/200, width/240, height/10);
  rect (width/4+width/17+width/80+width/80, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/14+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/16+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/19+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/24+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/31+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/44+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (width/2-width/83+width/400, height/2+height/15+height/200, width/240, height/10);
  rect (0, height-height/4-height/60, width/2, height/200);
  rect (width/4-width/50, height-height/4-height/60, width/240, height/10);
  rect (width/4-width/90, height-height/4-height/60, width/240, height/10);
  rect (width/4, height-height/4-height/60, width/240, height/10);
  rect (width-width/4+width/45, height/2+height/14+height/250,width/12,height/400);
  rect (width-width/4+width/40, height/2+height/14+height/250,width/400, height/40);
  //pasaje
  rect (width-width/6, height-height/4-height/9, width/4, height/200);
  rect (width-width/6, height-height/4-height/11, width/4, height/100);
  rect (width-width/10, height-height/4-height/9, width/240, height/45);
  rect (width-width/10+width/100, height-height/4-height/9, width/240, height/45);  
  //antenas
  rect (width-width/7+width/75, height/2-height/11, width/50, height/100);
  rect (width-width/7+width/38, height/2-height/9-height/300, width/300, height/10);
  rect (width/4+width/7, height/2+height/100, width/40, height/100);
  rect (width/4+width/7+width/90, height/2-height/25, width/200, height/10);
  rect (width/4+width/7-width/230, height/2-height/30, width/30, height/300);
  rect (width/4+width/7, height/2-height/40, width/40, height/300);
  rect (width/4+width/7-width/230, height/2-height/60, width/30, height/300);
  //aires acondicionados y puertas balcon
  rect (width-width/4-width/22, height-height/4-height/26, width/30, height/20);
  rect (width-width/4-width/35, height-height/4-height/25, width/80, height/20);
  rect (width-width/4-width/35, height-height/4-height/30, width/45, height/300);
  rect (width-width/4-width/110, height-height/4-height/30, width/300, height/20);
  rect (0, height/4+height/6+height/80, width/10+width/200, height/300);
  rect (width/10+width/200, height/4+height/6+height/80, width/300, height);
  rect (width/2+width/8, height/2+height/8, width/150, height/15);
  rect (width/2+width/8, height/2+height/8,width/100,height/200);
  rect (width/2+width/8, height/2+height/20,width/100,height/200);
  rect (width/2+width/8+width/150, height/2+height/20,width/300,height/13);
  rect (width/2+width/8, height/2+height/7-height/150,width/100,height/70);
  rect (width-width/5+width/100, height/2+height/18, width/50, height/10);
  
  
  //ciudad delante 1
  noStroke ();
  fill (74, 30, 64);
  rect (width/4+width/200, height/2+height/6,width/9+width/120, height);
  
  rect (width/4+width/200, height-height/4+height/20,width,height);
  //antena
  rect (width/4+width/50,height/2+height/7+height/65, width/30,height/12);
  rect (width/4+width/30, height/2+height/10,width/200,height/12);
  rect (width/4+width/45, height/2+height/9-height/200, width/35, height/250);
  rect (width/4+width/70, height/2+height/9+height/90, width/22, height/250);
  
  
  //ciudad delante 2
  fill (55, 15, 52);
  rect (0, height-height/4+height/24,width/4-width/40,height);
  
  rect (width/15, height/2+height/7,width/4-width/11,height);
  
  rect (0, height-height/8, width/3+width/12, height/8);
  //baranda
  rect (0,height-height/6+height/200, width/3+width/12,height/100);
  rect (width/3+width/13, height-height/6+height/200, width/75,height);
  
  rect (width/2+width/38, height-height/4+height/80,width,height/10);
  
  rect (width-width/4-width/24, height-height/4+height/80, width,height);
  
  rect (width-width/3-width/12, height-height/4+height/80, width/24,height);
  
  
  strokeWeight (height/100);
  stroke(55,15,52);
  line (width-width/3-width/15, height-height/11, width, height-height/11);
  line (width-width/3-width/15, height-height/25, width, height-height/25);
  
  
  //hora rosa
  fill (170, 71, 53);
  text ("Hora rosa", width-width/5-width/40,height-height/4+height/85);
  
  
}
