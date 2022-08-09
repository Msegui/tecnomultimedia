//Mateo Segui (88137/4)
//tp3
PImage fondo, fondo_2, fondo_3;
int segundo;
int estado;
int posXPJglobal, posYPJglobal;
int tam;
int pantalla=0;
int CantidadDeObstaculos = 4;
int CantidadDeImagenes = 3;
boolean salta, aterriza;
PImage[] fondos= new PImage [CantidadDeImagenes];
int[] posX ;
int[] posY ;
void setup() {
  size(800, 800);
  segundo=0;
  estado=0;
  posX = new int [CantidadDeObstaculos];
  posY = new int [CantidadDeObstaculos];
  for (int i = 0; i < CantidadDeObstaculos; i++ ) {
    posX[i]= floor(random(width, width+100)); 
    posY[i]= floor(random(0, height));
  
  }
  
}
void draw() {
  background(200);
  if (frameCount%60 == 0) {
    segundo += 1;
  }
   pantallas();
  
}
//void IniciarObstaculos(){


//}
void dibujarObstacullos() {
  push();
  
  for (int i = 0; i < CantidadDeObstaculos; i++ ) {
    rect (posX[i], posY[i], 20, 20);
    triangle(posX[i], posY[i], posX[i]-20, posY[i], posX[i], posY[i]-20);
  }
  pop();
  ActualizarObstaculos();
} 
void ActualizarObstaculos() {
  for (int i = 0; i < CantidadDeObstaculos; i++ ) {
    posX[i]--;
  }
}
