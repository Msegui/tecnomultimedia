// Mateo Seguí
// Legajo : 88137/4

PImage imgOriginal, imgOriginal_1, imgOriginal_2, imgOriginal_3, imgOriginal_4, imgOriginal_5, imgOriginal_6, imgOriginal_7;
PFont miTipografia, miTipografia_2 ;
int posY ;
String miTexto;
int pantalla = 0;
int posX ;
float random, random1, random2;
int segundo;

void setup() {
  size(500, 500);
  posY= height;
  imgOriginal= loadImage("portada.jpg");
  imgOriginal_1= loadImage("portada2.png");
  imgOriginal_2= loadImage("Sinbad.jpg");
  imgOriginal_3= loadImage("Marina.jpeg");
  imgOriginal_4= loadImage("Proteus.jpg");
  imgOriginal_5= loadImage("Eris.jpg");
  imgOriginal_6= loadImage("Musica.jpg");
  imgOriginal_7= loadImage("produccion.jpg");
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  //miTipografia_2 =loadFont("Arial-ItalicMT-48.vlw");
  textFont(miTipografia);
  textAlign(CENTER);
  textSize(30);
  posX = width/2 ;

  segundo = 0;
  surface.setResizable(true);
}
void draw() {
  background(200);

  if (frameCount%60 == 0) {
    segundo ++;
  }


  println("Segundo =", segundo);
  println("X Y =", mouseX, mouseY);
  println(pantalla);      
  if (posY > 0) {
    posY--;
  } else {
    posY = height;
  }
  if (posY == 0) {
    fill(0);
    pantalla++;
  }
  if (pantalla == 0 && segundo >= 1 ) {  

    miTexto= "Del cuento de \n\n las mil y una noches" ;
    image(imgOriginal, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla == 1 && segundo>= 8) {
    image(imgOriginal_1, 0, 0, width, height);
    fill(255);
    miTexto=" Con la participacion de :";
    text(miTexto, posX, posY);
  } else if (pantalla==2 && segundo >= 16) {
    miTexto = "Sinbad";
    image(imgOriginal_2, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla==3 && segundo >=23) {
    miTexto = "Marina";
    image(imgOriginal_3, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla==4 && segundo >= 26) {
    miTexto = "Proteus";
    image(imgOriginal_4, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla==5 && segundo >= 30) {
    miTexto = "Eris";
    image(imgOriginal_5, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla == 6 && segundo >= 35) {
    miTexto = "Musica compuesta por \n\n";
    image(imgOriginal_6, 0, 0, width, height);
    text(miTexto, posX, posY);
    text("\n\n Harry Gregson-Williams", posX, posY);
  } else if (pantalla==7 && segundo >= 40) {
    miTexto = "Producido por\n\n ";
    image(imgOriginal_7, 0, 0, width, height);
    text(miTexto, posX, posY);
    text("\n\nMireille Soria\n\n\n", posX, posY);
    text(" \n\n\n Jeffrey Katzenberg\n", posX, posY);
  } else if (pantalla==7 && segundo>= 45) {
    image(imgOriginal_7, 0, 0, width, height);
    miTexto = "Esctrito por\n\n";
    text(miTexto, posX, posY);
    text(" John Logan\n", posX, posY);
  } else if (pantalla==8 && segundo >= 50) {
    image(imgOriginal_7, 0, 0, width, height);
    miTexto = "Dirigido por\n ";
    text(miTexto, posX, posY);
    text("\n\n Tim Johnson\n\n\n", posX, posY);
    text("\n Patrick Gilmore\n", posX, posY);
  }
}




void keyPressed () {
  if (keyPressed || segundo>= 55);
  {
    segundo = 0;
    frameCount = 0;
    pantalla=0;
  }
  if (posY > 0) {
    posY--;
  } else {
    posY = height;
  }
}
