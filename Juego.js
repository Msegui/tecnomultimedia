class Juego {
  constructor() {
    this.estado = "Iniciar"
      this.Canasta = new Canasta(width/2, height, 50)

      this.Manzanas = []
      this.cantidadDeManzanas  = 10
      for (let i = 0; i < this.cantidadDeManzanas; i++) {
      this.Manzanas[i] = new Manzana(random(width/4,width), random(height/2), random(20, 50))
    }
    this.fondo = loadImage("assets/0.webp")
  }

  actualizar() {
    stroke(255, 255, 0)
      strokeWeight(3)

      for (let i = 0; i < this.cantidadDeManzanas; i++) {
      this.Manzanas[i].mover()
    }
    for (let i = 0; i < this.cantidadDeManzanas; i++) {

        if (dist(
        this.Canasta.x,
        this.Canasta.y,
        this.Manzanas[i].x,
        this.Manzanas[i].y) < this.Canasta.tam/2 + this.Manzanas[i].tam/2) {
        this.Canasta.colorA = "#D61313"
          this.Canasta.colision = true
          this.Canasta.tam++
      } else {
        this.Canasta.colorA = color(255)
      }
      
    if (this.Canasta.tam == 10) {
      this.estado = "Perdiste"
    }

    if (this.Canasta.tam == 100) {
      this.estado = "Ganaste"
     
    }
  }
}
  dibujar() {

     background(0)

    if (this.estado == "Iniciar") {
      background(120)
    } else if (this.estado == "Juego") {


      image(this.fondo, 0, 0, width, height)
        this.actualizar()
        this.Canasta.actualizar()
        this.Canasta.dibujar()

        for (let i = 0; i < this.cantidadDeManzanas; i++) {
        this.Manzanas[i].dibujar()
      }
    } else if (this.estado == "Ganaste" || this.estado == "Perdiste" ) {

      background(255)
    }
  }

  keyPressed() {
    if (this.estado == "Iniciar") {
      this.estado = "Juego"
    }
    this.Canasta.keyPressed()
  }
}
