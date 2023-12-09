class Enemigo {
  constructor(posX, posY) {
    this.posX=posY
      this.posY=posX
      this.miColor= color(255, 110, 110)
      this.tam=100
      this.tam2=100
      this.lobo=loadImage("data/lobo.png")
  }
  dibujar() {
      this.lobo.resize(this.tam,this.tam2)
      image(this.lobo,this.posY+=12,this.posX)
      if (this.posY > 700) {
        this.posY =0
        this.posX=random(0,400)

  }
  }

}
