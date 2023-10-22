//https://youtu.be/yQqn4g-uPCs
let juego

function setup() {
  createCanvas(windowWidth, windowHeight)
  juego = new Juego()
  
}


function draw() {
  juego.dibujar()
}


function keyPressed(){

    juego.keyPressed()
}
