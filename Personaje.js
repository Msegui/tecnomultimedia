class Personaje {
  constructor(posX, posY) {
    this.posX=posX
      this.posY=posY
      this.miColor= color(255, 0, 0)
      this.tam=70
      this.tam2=70
      this.direcion=0
      this.roja=[];
      this.roja[0]= loadImage("data/roja.png")
      this.roja[1]= loadImage("data/roja1.png")
      this.roja[2]= loadImage("data/roja2.png")
      this.roja[3]= loadImage("data/roja3.png")
  }
  dibujar() {

    this.roja[this.direcion].resize(this.tam, this.tam2)
      image(this.roja[this.direcion], this.posY, this.posX)
  }
  keyPress() {
    if (key=="d")
    {
      this.moverDer();
    }
    if (key=="s")
    {
      this.moverAba();
    }
    if (key=="w")
    {
      this.moverArri();
    }
    if (key=="a")
    {
      this.moverIz();
    }
  }
  moverDer() {
   
    this.posY +=20;
    this.direcion=1
    if(this.posY>670){
      this.posX=500
      this.posY=340  
    }
  
  }
  moverIz() {
    this.posY -=20;
    this.direcion=2
     if(this.posY<0){
      this.posX=500
      this.posY=340  
    }
  }
  moverArri() {
    this.posX -=20;
    this.direcion=3
  }
  moverAba() {
    this.posX +=20;
    this.direcion=0
   /*  if(this.posX<600){
      this.posX=500
      this.posY=340  
    }*/
  }
}
