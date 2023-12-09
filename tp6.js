let aventura

function setup() {
  createCanvas(windowWidth, windowHeight)
  aventura = new Aventura()
}

function draw() {
aventura.dibujar()
}

function mouseClicked() {
  aventura.mouseClicked()
}
function keyPressed() {
  aventura.juego.keyPress(key);
}
