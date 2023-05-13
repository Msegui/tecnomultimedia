//Mateo Segui legajo:88137/4
//Comision: 5 de 6pm a 8pm Tobias Albirosa
//Serrucho
PImage imgOriginal, imgOriginal_1, imgOriginal_2, imgOriginal_3, imgOriginal_4;
PFont miTipografia;
int posY ;
String miTexto;
int pantalla = 0;
int posX ;
float random, random1, random2;
int segundo;
float fondo;
int posicionXBoton = 200;
int posicionYBoton = 100;
int tamanioEnXBoton = 200;
int tamanioEnYBoton = 100;
boolean botonOk  = false;
color colorDeFondo = 0;
color colorDeTexto = 200;
color colorDeLineaDeBoton = 255;
color colorDeBoton = 255;
void setup() {

  size(640, 480);
  posY= height;
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  imgOriginal= loadImage("Serrucho normal.jpg");
  imgOriginal_1= loadImage("Serrucho normal2.jpg");
  imgOriginal_2= loadImage("Serrucho Sierra.jpg");
  imgOriginal_3= loadImage("Serruchodepoda.jpg");
  imgOriginal_4= loadImage("Serruchodepoda2.jpg");
  
  fondo= random (0, 255);
  textFont(miTipografia);
  textAlign(CENTER);
  textSize(30);
  posX = width/2 ;
  segundo = 0;
  surface.setResizable(true);
  frameRate(60);
}
void draw() {
  background(200);

  if (frameCount%60 == 0) {
    segundo += 1;
  }

  println("Segundo =", segundo);
  println(pantalla);
  println(posY);
  if (posY >=-100) {
    posY--;
  } else {
    posY = height;
  }
  if (posY == -100 ) {
    fill(0);
    pantalla++;
  }
  if (pantalla == 0 && segundo >= 0 ) {
    fill(0);
    miTexto= "El serrucho es una herramienta\nde corte para distintos usos\n dependiendo el tipo de serrucho" ;
    image(imgOriginal, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla == 1 && segundo>= 9) {
    image(imgOriginal_1, 0, 0, width, height);
    fill(255);
    miTexto="Los serruchos universales\n sirven para tableros o paneles de madera.\n Cortan utilizando fuerza de empuje.";
    text(miTexto, posX, posY);
  } else if (pantalla==2 && segundo >= 18) {
    miTexto = "Las seguetas para hacer\n curvas en diferentes tipos\n de materiales ademas de la madera,\n como metales y plásticos.";
    image(imgOriginal_2, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla==3 && segundo >=25) {
    miTexto = "O los serruchos de poda\n que son para los trabajos de campo";
    image(imgOriginal_3, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla==4 && segundo >= 32) {
    fill(255);
    miTexto = "Como la poda de arboles y arbustos";
    image(imgOriginal_4, 0, 0, width, height);
    text(miTexto, posX, posY);
  } else if (pantalla==5 && segundo >= 45){
  colorDeFondo = 127;
    stroke(colorDeLineaDeBoton);
    fill(colorDeBoton);
    rect(posicionXBoton, posicionYBoton, tamanioEnXBoton, tamanioEnYBoton);
    fill(colorDeTexto);
    text("Reiniciar", posicionXBoton + tamanioEnXBoton/2, posicionYBoton + tamanioEnYBoton-35);
  }
}

void mouseMoved() {

  if (mouseX > posicionXBoton && mouseX < posicionXBoton + tamanioEnXBoton
    && mouseY > posicionYBoton && mouseY < posicionYBoton + tamanioEnYBoton) {
    colorDeLineaDeBoton = color(0, 255, 0);
    colorDeBoton = color(255, 255, 0);
    colorDeTexto = color(0, 255, 255);
    botonOk = true;
  } else {
    colorDeLineaDeBoton  = 255;
    colorDeBoton = 255;
    colorDeTexto = 200;
    botonOk = false;
  }
}
void mouseClicked () {
  if ( (botonOk == true)) {
    pantalla = 0;
    segundo = 0;
    frameCount = 0;
    pantalla=0;
    posY = height;
 }
}
