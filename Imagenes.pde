void CargarImagenes(){
for (int i = 0 ; i < 3; i++) {
    fondos[i] = loadImage("fondo"+i+".jpg");
float xDeFondos = map(posXPJglobal, 0, 1000, 200 , 0);
image(fondos[0], xDeFondos,height/2);

}
}
     
