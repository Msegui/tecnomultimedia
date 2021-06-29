PImage imgOriginal, imgOriginal_2;
PFont miTipografia, miTipografia_2 ;
int posY ;
String miTexto="Creditos";
int pantalla = 0;



void setup(){
  size(500,500);
  posY= height;
  imgOriginal= loadImage("sinbad1.jpg");
  imgOriginal_2= loadImage("sinbad2.jpg");
  //image()
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  miTipografia_2 =loadFont("Arial-ItalicMT-48.vlw");
  textFont(miTipografia_2);
  textAlign(CENTER);
  

}
void draw(){
     background(200);
     
     image(imgOriginal,400,400);
     if(keyPressed||mouseClicked){
       //text("Empezar creditos", width/2, posY);
     text(miTexto,width/2, posY);
     if(posY > 0){
        posY--;
     }else{
       posY = height;
     }
     if(posY == 0){
       fill(0);
       pantalla++;
     }
    if(pantalla == 1){
      image(imgOriginal,400,400);
      imgOriginal= loadImage("sinbad1.jpg");
      miTexto = "Personajes"  ;
     }
     
    if(pantalla == 1){
      pantalla++;
    }
    if(pantalla==3){
    miTexto = "Musica";
    
    }
   //}
}
/*void keyPressed() {
  if (key == BACKSPACE) {
    pantalla=0;*/
