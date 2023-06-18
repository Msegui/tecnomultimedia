int anchoDeModulo;
int altoDeModulo;
int cantidadXDeModulos;
int cantidadYDeModulos;
int cantidad=10;
int posX = 200;
int posY = 200;
float r = 20;
float  rd;
color colorA = color(255, 0, 0);
color colorB = color(255, 0, 255);
color colorC = color(0,255,255);
int x=10 ;
void setup() {
  size(800, 400);
  cantidadXDeModulos = 1;
  cantidadYDeModulos = 1;
  anchoDeModulo = width/cantidadXDeModulos;
  altoDeModulo = height/cantidadYDeModulos;
  r = altoDeModulo/cantidad;
   rd = anchoDeModulo/cantidad;
}
void draw() {
  background(200);
 
  
 
  for (int i = 0; i < cantidadXDeModulos; i++) {
    for (int j = 0; j < cantidadYDeModulos; j++) {
      dibujarModulo(i, j);
    }
  }
}
void modulo(int x, int pX, int pY) {
  color colorA = color(255, 0, 100);
  color colorB = color(220, 155, 120);
  color colorC = color(0,200,255);
  push();
  if (x % 2 == 0) {
    fill(0);
  } else {
    fill(lerpColor(colorA, colorB, map(x, 0, 9, 0, 1)));
  }
  translate(pX * anchoDeModulo, pY * altoDeModulo);
  rotate(-radians(frameCount));

  ellipse(0, 0,  rd * x, r * x);
  fill(lerpColor(colorA, colorB, colorC));
  circle(0, 0,  rd );
  pop();
}
void dibujarModulo(int parametroX, int parametroY) {

  for (int i = cantidad; i > 0; i--) {
    modulo(i, parametroX, parametroY);
  }
}
void mouseMoved() {
  cantidadYDeModulos  = int(map(mouseY, 0, height, 1, 20));

  cantidadXDeModulos  = int(map(mouseX, 0, width, 1, 20));

  anchoDeModulo = width/cantidadXDeModulos;
  altoDeModulo = height/cantidadYDeModulos;

  r = altoDeModulo/cantidad;
   rd = anchoDeModulo/cantidad;
}
