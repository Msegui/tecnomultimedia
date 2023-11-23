let aventura
function setup() {
  createCanvas(windowWidth, windowHeight)
  aventura = new Aventura()
  
}


function draw() {
aventura.dibujar()
}

function mouseMoved() {
boton.mouseMoved();
}
