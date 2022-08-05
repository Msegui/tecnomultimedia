void pantallas(){
  if (pantalla == 0 && segundo >= 0 && segundo<5 ){
  background(0);
  text("Presione intro para continuar "+pantalla, width/2 ,height/2);
  text("Evite 2 0 3 obstaculos para ganar",width/2 ,height/2+15);
      
  }else if (pantalla == 0 && segundo >= 2 && key == ENTER){
    pantalla=1;
   println("ENTER");
  
  }
 if(pantalla==1){
 CargarImagenes();
 dibujarObstacullos();
 personaje(0);
 
 } 
}
//if(pantalla=2){
 // text("GANASTE",width/2,height/2);
   //CargarImagenes();
  
  
//  }
