class Aventura{
 constructor(){
   this.pantalla = 0
   this.boton = Bonton()
   this.imagenes = []
   for (int i = 0; i <3; i++) {
    this.imagenes[i] = loadImage(i+".png");
    this.imagenes[i].resize(windowWidth, windowHeight);
  }
 }
dibujar(){
 
  image(imagenes[pantalla],0,0)
if(this.pantalla==1){
    fill(0);
  text("La historia comienza con la madre de caperuza\n pidiendole que vaya allevarle a la abuela\nuna torta ¿Ella que hace?",width-300,height/5);
  Botones("circ", width-300, height-100, 70, 1, "Iniciar");
 }

}
}
