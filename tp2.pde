// Mateo Seguí 
PImage imgOriginal, imgOriginal_1, imgOriginal_2, imgOriginal_3, imgOriginal_4, imgOriginal_5, imgOriginal_6;
PFont miTipografia, miTipografia_2 ;
int posY ;
String miTexto="Creditos de:";
String miTexto_1 ="LMN";
int pantalla = 0;
float imageX, imageY, imageX2, imageY2, imageX3, imageY3, imageX4, imageY4, imageX5, imageY5;
float opaco, opaco2, opaco3, opaco4, opaco5, opaco6, opaco7, opaco8;
float direccion, direccion2, direccion3;
float random, random1, random2;
int segundo;

void setup() {
  size(500, 500);
  posY= height;
  imgOriginal= loadImage("Las mil y una noches.jpg");
  imgOriginal_1= loadImage("Sinbad.jpg");
  imgOriginal_2= loadImage("Marina.jpeg");
  imgOriginal_3= loadImage("Proteus.jpg");
  imgOriginal_4=loadImage("Eris.jpg");
  imgOriginal_5=loadImage("Musica.jpg");
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  //miTipografia_2 =loadFont("Arial-ItalicMT-48.vlw");
  textFont(miTipografia);
  textAlign(CENTER);
  opaco = 1;
  direccion = 1;
  opaco2 = 300;
  opaco3 = 255;
  opaco4 = 1;
  opaco5 = 1;
  opaco6 = 1;
  opaco7 = 1;
  opaco8 = 1;
  direccion2 = 1;
  imageX = 400;
  imageY = 500;
  imageX2 = 400;
  imageY2 = 500;
  imageX3 = 400;
  imageY3 = 500;
  imageX4 = 400;
  imageY4 = 500;
  imageX5 = 400;
  imageY5 = 500;  

  random = random(125, 275);
  random1 = random(125, 275);
  random2 = random(125, 275);

  segundo = 0;
}
void draw() {
  background(200);

  if (frameCount%60 == 0) {
    segundo ++;
  }
  if ((segundo >= 22) && (segundo < 25)) {
    //pantalla ="LMN ";

    println("Segundo =", segundo);
    println("X Y =", mouseX, mouseY);


    text(miTexto, width/2, posY);     
    if (posY > 0) {
      posY--;
    } else {
      posY = height;
    }

    if (posY == 0) {
      fill(0);
      pantalla++;
    }
    if (pantalla == 0 && segundo >= 5 ) {      
      miTexto= "De las mil y una noches"  ;
      image(imgOriginal, 400, 400);
    } else if (pantalla == 2) { 

      imgOriginal_2= loadImage("Marina.jpg");
    } else if (pantalla==3) {
      miTexto = "Proteus" ; 
      image(imgOriginal_3, 0, 0);
      //imgOriginal_4=loadImage("Eris.jpg");
    }
  }
}



void keyPressed () {
  if (keyCode == ENTER || keyCode == ESC || keyCode == TAB);
  {
    opaco = 1;
    direccion = 1;
    opaco2 = 300;
    opaco3 = 255;
    opaco4 = 1;
    opaco5 = 1;
    opaco6 = 1;
    opaco7 = 1;
    opaco8 = 1;
    direccion2 = 1;
    imageX = 400;
    imageY = 500;
    imageX2 = 400;
    imageY2 = 500;
    imageX3 = 400;
    imageY3 = 500;
    imageX4 = 400;
    imageY4 = 500;
    imageX5 = 400;
    imageY5 = 500;  

    random = random(125, 275);
    random1 = random(125, 275);
    random2 = random(125, 275);

    segundo = 0;
    frameCount = 0;
  }
}
