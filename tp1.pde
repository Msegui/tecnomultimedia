//Mateo Segui legajo:88137/4
//comision:4b de 7pm a 9pm Tobias Albirosa
//Sinbad el marino
PImage imgOriginal, imgOriginal_1, imgOriginal_2, imgOriginal_3, imgOriginal_4, imgOriginal_5, imgOriginal_6, imgOriginal_7;
PFont miTipografia, miTipografia_2 ;
int posY ;
String miTexto;
int pantalla = 0;
int posX ;
float random, random1, random2;
int segundo;
float fondo;
void setup() {

  size(500, 500);
  posY= height;
  Imagenes();
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  fondo= random (0, 255);
  textFont(miTipografia);
  textAlign(CENTER);
  textSize(30);
  posX = width/2 ;
  frameRate(60);
  segundo = 0;
  surface.setResizable(true);
}
void draw() {
  background(200);

  if (frameCount%60 == 0) {
    segundo += 1;
  }

  println("Segundo =", segundo);
  //println("X Y =", mouseX, mouseY);
  println(pantalla);
  //println(miTexto);
  println(posY);
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
  } else if (pantalla == 9 && segundo>= 58 || frameCount%5 == 0){
       background(fondo);}
}
   
void keyPressed () {
    if (keyPressed || segundo>= 55)
    {
      segundo = 0;
      frameCount = 0;
      pantalla=0;
      posY = height;
    }
  }
