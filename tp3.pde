// Nombre:Mateo Segui, Comision:5, Horarios: Jueves de 6pm a 8pm
// link:https://youtu.be/kQdRyd9f09Q
boolean on;
PImage imagenes [];
int pantalla = 0;
int segundo;
PFont miTipografia;
void setup() {
  size(600, 600);
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  imagenes = new PImage[13];
  textFont(miTipografia);
  textAlign(CENTER);
  textSize(18);
  for (int i = 0; i <13; i++) {
    imagenes[i] = loadImage(i+".png");
    imagenes[i].resize(width, height);
  }
}

void draw() {
  dibujarPantallas();
  println(pantalla);
}
void dibujarPantallas() {

  image(imagenes[pantalla], 0, 0);
  Texto();
  if (pantalla == 0) {
    Botones("circ", width-300, height-100, 70, 1, "Iniciar");
  } else if (pantalla == 1) {
    Botones("cuad", width-160, height-50, 72, 2, "Va");
    Botones("circ", width-500, height-50, 64, 11, "No va");
  } else if (pantalla == 2) {
    Botones("cuad", width-160, height-50, 72, 3, "Avanzar");
   Botones("circ", width-500, height-50, 64, 1, "Atras");
  } else if (pantalla==3){
   Botones("cuad", width-160, height-50, 72, 4, "Avanzar");
   Botones("circ", width-500, height-50, 64, 11, "No la da");
  }else if (pantalla==4){
    Botones("cuad", width-160, height-50, 72, 5, "Avanzar");
    Botones("circ", width-500, height-50, 64, 3, "Atras");
  }else if (pantalla==5){
    Botones("cuad", width-160, height-50, 72, 6, "Avanzar");
    Botones("circ", width-500, height-50, 64, 4, "Atras");
  }else if (pantalla==6){
    Botones("cuad", width-160, height-50, 72, 7, "Avanzar");
    Botones("circ", width-500, height-50, 64, 5, "Atras");
  }else if (pantalla==7){
    Botones("cuad", width-160, height-50, 72, 8, "Avanzar");
    Botones("circ", width-500, height-50, 64, 6, "Atras");
  }else if (pantalla==8){
    Botones("cuad", width-160, height-50, 72, 9, "Avanzar");
    Botones("circ", width-500, height-50, 64, 7, "Atras");
  }else if (pantalla==9){
    Botones("cuad", width-160, height-50, 72, 10, "Avanzar");
     Botones("circ", width-500, height-50, 64, 7, "Atras");
  }else if (pantalla==10){
    Botones("circ", width-300, height-50, 72, 0, "Reiniciar");
    Botones("cuad", width-160, height-50, 72, 12, "Avanzar");
  }else if(pantalla==11){
    Botones("circ", width-300, height-50, 64, 0, "Reiniciar");
  }else if (pantalla==12){
  text("Creditos",width-300, height-50);
   Botones("circ", width-300, height-50, 72, 0, "Reiniciar");
  }
}
void Texto(){
  if(pantalla==1){
    fill(0);
  text("La historia comienza con la madre de caperuza\n pidiendole que vaya allevarle a la abuela\nuna torta ¿Ella que hace?",width-300,height/5);
  }else if(pantalla==2){
    fill(210);
    text("Al salir y llegar al bosque,\n un lobo que pasaba por ahí ve la canasta que lleva\n y le pica la curiosidad por saber que lleva la niña",width-300,height/5);
  }else if(pantalla==3){
   fill(210);
    text("El lobo sale de su escondite\n y le pregunta a Caperucita que hay en la canasta,\n Ella contesta que una torta para su abuela\n El lobo quiere la canasta¿Se la da?",width-300,height/5);
  }else if (pantalla==4){
  text("El lobo la deja ir ante la negativa,\n pero idea un plan para conseguir la canasta",width-300,height/5);
  }else if(pantalla==5){
    text("El lobo llega antes a la casa de la abuela y entonces...",width-300,height/5);
  }else if(pantalla==6){
    text("Se la come de un bocado para disfrazarse de ella\n y poder conseguir la canasta",width-300,height/5);
  }else if(pantalla==7){
    fill(0);
    text("Un leñador pasaba por ahí\n buscando al lobo al ver que se dirigia a la casa de la abuela",width-300,height/5);
  }else if(pantalla==8){
    fill(0);
    text("Caperucita llega para entregar la canasta \ny el lobo esta en la cama para disimular,\n entonces al obtener la canasta...",width-300,height/5);
  }else if(pantalla==9){
    fill(0);
    text("Se descuida\n y deja ver la panza grandota por haberse comido a la abuela.\n El leñador llega y trae unas tijeras para liberar a la abuela",width-300,height/5);
  }else if (pantalla==12){
  text("Nombre:Mateo Segui\n Comision:5\n Legajo:88137\n Autor: Hermanos Grim",width-300,height/5);
  }
}
void mouseMoved() {
  on = true;
}
