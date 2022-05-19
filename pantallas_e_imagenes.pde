//PANTALLAS
//The Legend of Zelda
void titulo1 () {
  pushStyle();
  
  
  background (0);
  textFont (rodinBoldItalic);
  textAlign (CENTER);
  fill (frames);
  if(frames >=255) {
    fill (white--);
  } if (white <= 0) {
    fill (0);
  } if (frames == 600) {
    nextPag = true;
    white = 255;
  } else {
  }
  text ("The Legend of Zelda", width/2, height/2);
    
  popStyle();
  
}

//Breath of the Wild
void titulo2 () {

  pushStyle();

  background (0);
  textFont (rodinBoldItalic);
  textAlign (CENTER);
  fill (frames);
  if(frames >=255) {
    fill (white--);
  } if (white <= 0) {
    fill (0);
  } if (frames == 600) {
    nextPag = true;
    nextImg= true;
    white = 255;
  } else {
  }
  text ("Breath of the Wild", width/2, height/2);
  
  popStyle();
}


//1er listado de creditos
void creditos1 () {
  pushStyle();
  
  textFont (rodinBold);
  fill (211, 168, 98);
  textAlign (CENTER);
  text ("STAFF", creditosPosXInicial, creditosPosYInicial-=random(1,3));
  textAlign (RIGHT); //Título de la persona
  text ("DIRECTOR   "+
        "\n \n \n \n "+
        "ASSISTANT DIRECTOR   "+
        "\n \n \n \n "+
        "GAME DESIGN   "+
         "\n \n \n \n \n \n \n \n \n \n \n"+
         "SCRIPT SUPERVISOR   "
  , creditosPosXInicial, creditosPosYInicial2-=random(1,3));
  fill (255);
  textAlign (LEFT); //Nombre de la persona
  text ("   Hidemaro Fujibayashi"+
        "\n \n \n \n"+
        "   Daiki Iwamoto"+
        "\n \n \n \n   "+
        "Kentaro Tominaga"+ "\n   "+
        "Hiroshi Sakasai"+"\n   "+
        "Yuya Sato" +"\n   "+
        "Shinichi Ikematu"+"\n   "+
        "Kanae Nakayama"+"\n   "+
        "Tomonori Kawazoe"+"\n   "+
        "Emi Takano"+"\n   "+
        "Takahito Sekimoto"+
        "\n \n \n \n "+
        "   Akihito Toda"
  , creditosPosXInicial, creditosPosYInicial2);
  //Segunda linea de créditos
  text ("\n \n \n \n \n \n \n \n"+
        "Hiroaki Tamura"+"\n"+
        "Yasutaka Takeuchi"+"\n"+
        "Yutaka Hiramuki"+"\n"+
        "Mari Shirakawa"+"\n"+
        "Hiroshi Ando"+"\n"+
        "Kohei Kawazoe"+"\n"+
        "Makoto Shimamoto"+"\n"+
        "Yuya Imagawa"
  , creditosPosXInicial2, creditosPosYInicial2);
  //Tercera linea de créditos
  text ("\n \n \n \n \n \n \n \n"+
        "Yohei Fujino"+"\n"+
        "Eiji Mukao"+"\n"+
        "Takayuki Ikkaku"+"\n"+
        "Yoichi Yamada"+"\n"+
        "Naoto Murakami"+"\n"+
        "Yuichiro Tsumita"+"\n"+
        "Erina Shimamoto"+"\n"+
        "Hiroshi Konishi"
  , creditosPosXInicial3, creditosPosYInicial2);
  if (creditosPosYInicial2 == 0-height/2-height/10) {
    nextPag = true;
    creditosPosYInicial = height;
    creditosPosYInicial2 = height+160;
  } else {
  }
  
  popStyle();
}

void creditos2 () {
  pushStyle();
  
  textFont (rodinBold);
  textAlign (RIGHT);
  fill (211, 168, 98);
  //Títulos
  text ("TECHNICAL DIRECTOR   "+"\n \n \n \n"+
        "SYSTEM ARCHITECT   "+"\n \n \n \n"+
        "PROGRAMMING LEAD   "+"\n \n \n \n \n"+
        "PLAYER PROGRAMMING   "+"\n \n \n \n"+
        "CAMERA PROGRAMMING   "+"\n \n \n \n"+
        "ENEMY PROGRAMMING   "+"\n \n \n \n \n"+
        "OBJECT PROGRAMMING   "+"\n \n \n \n"+
        "WILDLIFE PROGRAMMING   "+"\n \n \n \n \n"+
        "NPC PROGRAMMING   "+"\n \n \n \n \n"+
        "EVENT PROGRAMMING   "
  , creditosPosXInicial, creditosPosYInicial-=random(1,3));
  //Nombres
  fill (255);
  textAlign (LEFT);
  text ("   Takuhiro Dohta"+"\n \n \n \n"+
        "   Yuichiro Okamura"+"\n \n \n \n"+
        "   Kenji Matsutani"+"\n"+
        "   Hiroshi Umemiya"+"\n \n \n \n"+
        "   Junya Okamoto"+"\n \n \n \n"+
        "   Minoru Hamaura"+"\n \n \n \n"+
        "   Yosuke Sakooka"+"\n"+
        "   Mahito Idehara"+"\n \n \n \n"+
        "   Hiroyuki Kira"+"\n \n \n \n"+
        "   Shogo Kihara"+"\n"+
        "   Corey Bunnell"+"\n \n \n \n"+
        "   Hiroto Kurano"+"\n"+
        "   Nobuhiro Matsumura"+"\n \n \n \n"+
        "   Nobuhiro Sumiyoshi"+"\n"+
        "   Tadashi Sakamoto"+"\n"+
        "   Hiroki Taguchi"
  , creditosPosXInicial, creditosPosYInicial);
  //Segunda línea de nombres
  text ("\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n"+
        "Takuma Deguchi"+"\n"+
        "Kazuki Misu"
  , creditosPosXInicial2, creditosPosYInicial);
  //Tercera línea de nombres
  text ("\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n"+
        "Chihiro Okada"+"\n"+
        "Hiroki Omosako"
  , creditosPosXInicial3, creditosPosYInicial);
  if (creditosPosYInicial == 0-height-height/4) {
    nextPag = true;
    creditosPosYInicial = height;
  } else {
  }
  
  popStyle();
}

void creditos3 () {
  pushStyle();
  
  textFont (rodinBold);
  textAlign (RIGHT);
  fill (211, 168, 98);
  text ("ART DIRECTOR   "+"\n\n\n"+
        "SENIOR LEAD ARTISTS                       "+"\n\n\n\n\n\n\n"+
        "LEAD ARTISTS                          "+"\n\n\n\n\n\n\n\n\n\n\n\n\n"+
        "TECHNICAL ARTIST   "+"\n\n\n"+
        "PLAYER ACTION   "+"\n\n\n"+
        "CHARACTER ACTION   "+"\n\n\n\n"+
        "CHARACTER RIGGING"
  , creditosPosXInicial, creditosPosYInicial-=random(1,3));
  fill (162, 138, 98);
  text ("\n\n\n"+"ANIMATION   \n"+
        "CHARACTER/ITEM   \n"+
        "LANDSCAPE   \n"+
        "VFX/TECNICAL   \n\n\n\n"+
        "STRUCTURAL   \n\n"+
        "DUNGEON   \n\n"+
        "ENEMY   \n"+
        "NPC   \n"+
        "ANIMATION   \n"+
        "CHARACTER   \n"+
        "PRODUCTION   \n"+
        "UI   "
  , creditosPosXInicial, creditosPosYInicial);
  //Nombres
  fill (255);
  textAlign (LEFT);
  text ("   Satoru Takizawa \n\n\n"+
        "   Ryuji Kobayashi \n"+
        "   Yoshiyuki Oyama \n"+
        "   Makoto Yonezu \n"+
        "   Keijiro Inoue \n\n\n\n"+
        "   Manabu Takehara \n"+
        "   Kei Watanabe \n"+
        "   Yasutomo Nishibe \n"+
        "   Bungo Takahashi \n"+
        "   Takafumi Kiuchi \n"+
        "   Hirohito Shinoda \n"+
        "   Yasushiro Fujita \n"+
        "   Hiroki Omote \n"+
        "   Takafumi Hori \n"+
        "   Takahiro Nagaya \n\n\n\n"+
        "   Yoshiyuki Sawada \n\n\n"+
        "   Mizuki Okunaka \n\n\n"+
        "   Kengo Inoue \n"+
        "   Nami Shimura \n\n\n"+
        "   Daisuke Nobori \n"+
        "   Toru Hombu"
  , creditosPosXInicial, creditosPosYInicial);
  //Segunda línea de nombres
  text ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"+
        "Minechika Kitai"+"\n"+
        "Shinji Koide"
  , creditosPosXInicial2, creditosPosYInicial);
  //Tercera línea de nombres
  text ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"+
        "Chizue Utazu"
  , creditosPosXInicial3, creditosPosYInicial);
  if (creditosPosYInicial == 0-height) {
    nextPag = true;
    creditosPosYInicial = height;
  } else {
  }
  
  popStyle();
}

void creditos4 () {
  pushStyle();
  
  textFont (rodinBold);
  textAlign (RIGHT);
  fill (211, 168, 98);
  text ("CINEMATIC DIRECTOR   \n\n\n"+
        "ASSISTANT CINEMATIC DIRECTOR   \n\n\n\n"+
        "CINEMATIC DESIGN   \n\n\n\n\n"+
        "CINEMATIC STORYBOARD ART   \n\n\n\n\n"+
        "CINEMATIC ANIMATION   \n\n\n\n\n\n\n\n\n"+
        "MOTION CAPTURE   "
  , creditosPosXInicial, creditosPosYInicial-=random(1,3));
  //Nombres
  fill (255);
  textAlign (LEFT);
  text ("   Hiroki Hirano \n\n\n"+
        "   Daiki Hayashidani \n"+
        "   Hiroshi Shirai \n\n\n"+
        "   Naoki Mori \n"+
        "   Takumi Kawagoe \n"+
        "   Tomoe Aratani \n\n\n"+
        "   Yusuke Kubo \n"+
        "   Kazuya Miura \n"+
        "   Kiyoto Nakajima \n\n\n"+
        "   Kentaroh Honma \n"+
        "   Takuto Chino \n"+
        "   Tetsuya Kouzuma \n"+
        "   Shun Katori \n"+
        "   Megumi Ueno \n"+
        "   Haruka Uchiumi \n"+
        "   Daisuke Shimizu \n\n\n"+
        "   Yoshio Miyaki \n"+
        "   Naomi Taniyama"
  , creditosPosXInicial, creditosPosYInicial);
  //Segunda línea de nombres
  text ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"+
        "Hidehito Yamamoto \n"+
        "Kanami Izumi \n"+
        "Yasumasa Sekine \n"+
        "Koji Nakahata \n"+
        "Ayako Ohnishi \n"+
        "Youko Uemura \n"+
        "Toshimitsu Yanai \n\n\n"+
        "Haruka Shibai"
  , creditosPosXInicial2, creditosPosYInicial);
   //Tercera línea de nombres
  text ("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"+
        "Maya Ishige \n"+
        "Masuyo Esaka \n"+
        "Hiromitsu Miyashita \n"+
        "Kosuke Araki \n"+
        "Yasuko Motoki \n"+
        "Yuji Sato \n\n\n\n"+
        "Sanshiro Wada"
  , creditosPosXInicial3, creditosPosYInicial);
  if (creditosPosYInicial == 0-height/2-height/3) {
    nextPag = true;
    creditosPosYInicial = height;
  } else {
  }
  
  popStyle();
}

//IMAGENES
void imagen1 () {
  pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosY >= 10 || imgPosX >= -133) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(ImpasHouse, imgPosX+=random(.3,.5), imgPosY+=random(.3,.5), imgAncho, imgAlto);
  popStyle ();  
}

void imagen2 () {
  pushStyle ();
    nextImg= false;
 tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosY2 >= 10 || imgPosX2 <= 6) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Impa, imgPosX2-=random(.3,.5), imgPosY2+=random(.3,.5), imgAncho, imgAlto);
  popStyle ();  
}

void imagen3 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosX3 >= -80 || imgPosY3 >= 15.5) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Mipha, imgPosX3+=random(.3,.5), imgPosY3+=random(.1,.3), imgAncho, imgAlto);
  popStyle ();  
}

void imagen4 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosY2 >= 10 || imgPosX2 <= 6) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Revali, imgPosX2-=random(.3,.5), imgPosY2+=random(.3,.5), imgAncho, imgAlto);
  popStyle ();  
}

void imagen5 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosX3 >= -80 || imgPosY3 >= 15.5) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Urbosa, imgPosX3+=random(.3,.5), imgPosY3+=random(.1,.3), imgAncho, imgAlto);
  popStyle ();  
}

void imagen6 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosY2 >= 10 || imgPosX2 <= 6) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Garuk, imgPosX2-=random(.3,.5), imgPosY2+=random(.3,.5), imgAncho, imgAlto);
  popStyle ();  
}

void imagen7 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosX3 >= -80 || imgPosY3 >= 15.5) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Zelda, imgPosX3+=random(.3,.5), imgPosY3+=random(.1,.3), imgAncho, imgAlto);
  popStyle ();  
}

void imagen8 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosX3 >= -80 || imgPosY3 >= 15.5) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Teba, imgPosX3+=random(.3,.5), imgPosY3+=random(.1,.3), imgAncho, imgAlto);
  popStyle ();  
}

void imagen9 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosY2 >= 10 || imgPosX2 <= 6) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Sidon, imgPosX2-=random(.3,.5), imgPosY2+=random(.3,.5), imgAncho, imgAlto);
  popStyle ();  
}

void imagen10 () {
pushStyle ();
    nextImg= false;
  tint (opacidad++);
  if (opacidad >= 255) {
    tint (255);
  } if (imgPosX3 >= -80 || imgPosY3 >= 15.5) {
    tint (white--);
  } if (white<=0) {
    tint (0);
    nextImg= true;
  }
  image(Sword, imgPosX3+=random(.3,.5), imgPosY3+=.1, imgAncho, imgAlto);
  popStyle ();  
}
