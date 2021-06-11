PImage imgOriginal, imgOriginal_2;
PFont miTipografia, miTipografia_2 ;
int posY ;
String miTexto="Creditos";
int pantalla = 0;



void setup(){
  size(500,500);
  posY= height;
  imgOriginal=loadImage("WhatsApp Image 2021-06-10 at 7.36.28 PM");
  imgOriginal_2=loadImage("WhatsApp Image 2021-06-10 at 9.31.42 PM");
  miTipografia = loadFont("Arial-BoldItalicMT-48.vlw");
  miTipografia_2 =loadFont("Arial-ItalicMT-48.vlw");
  textFont(miTipografia_2);
  textAlign(CENTER);
  

}
void draw(){
     background(200);
        
     text(miTexto,width/2, posY);
     if(posY > 0){
        posY--;
     }else{
       posY = height;
     }
     if(posY == 0){
       pantalla++;
     }
    if(pantalla == 1){      
      miTexto = "Personajes"  ;
     }
     
    if(pantalla == 1){
      pantalla++;
    }
    if(pantalla==3){
    miTexto = "Musica";
    
    }
}
