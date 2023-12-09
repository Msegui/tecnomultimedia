class Aventura {
  constructor() {
      this.pantalla = 0
      this.cantidadDePantallas=11
      
      this.botonSiguiente = new Boton(width/4+370, height/5+450, 101, 50, "Siguiente", "siguiente")
      this.botonVolver = new Boton(width/4, height/2+150, 75, 50, "Volver", "volver")
      this.botonCreditos = new Boton(width/4, height/2, 100, 50, "Créditos", 1) //importante ultimo parametro
      this.botonIniciarAventura = new Boton(width/2 + width/4, height/2, 100, 50, "Inicar aventura", 2) //importante ultimo parametro
      this.botonIrAInicio = new Boton(width/4+370, height/5+450, 100, 50, "Ir a inicio", 0) //importante ultimo parametro
      this.volverAJugar = new Boton(width/6+370, height/6+450, 139, 50, "Volver a jugar", 3) //importante ultimo parametro
      this.botonNoVa = new Boton(width/4, height/4, 160, 50, "Final Alternativo", 12) //importante ultimo parametro
      
      this.juego = new Juego()
      this.imagen=[]
      /*this.imagenes = []
     for (let i = 0; i <11; i++) {
     this.imagenes[i] = loadImage(i+"data/.png");
     this.imagenes[i].resize(windowWidth, windowHeight);
    */this.imagen[0]= loadImage("data/0.png")
      this.imagen[1]= loadImage("data/1.png")
      this.imagen[2]= loadImage("data/2.png")
      this.imagen[3]= loadImage("data/3.png")
      this.imagen[4]= loadImage("data/4.png")
      this.imagen[5]= loadImage("data/5.png")
      this.imagen[6]= loadImage("data/6.png")
      this.imagen[7]= loadImage("data/7.png")
      this.imagen[8]= loadImage("data/8.png")
      this.imagen[9]= loadImage("data/9.png")
      this.imagen[10]= loadImage("data/10.png")
      this.imagen[11]= loadImage("data/11.png")
    }
  
  dibujar() {
    textSize(20)
    fill(255)
    //image(this.imagenes[this.pantalla], 0, 0)
    this.imagen[0].resize(windowWidth, windowHeight)
    this.imagen[1].resize(windowWidth, windowHeight)
    this.imagen[2].resize(windowWidth, windowHeight)
    this.imagen[3].resize(windowWidth, windowHeight)
    this.imagen[4].resize(windowWidth, windowHeight)
    this.imagen[5].resize(windowWidth, windowHeight)
    this.imagen[6].resize(windowWidth, windowHeight)
    this.imagen[7].resize(windowWidth, windowHeight)
    this.imagen[8].resize(windowWidth, windowHeight)
    this.imagen[9].resize(windowWidth, windowHeight)
    this.imagen[10].resize(windowWidth, windowHeight)
    this.imagen[11].resize(windowWidth, windowHeight)


      if (this.pantalla == 0) {
      image(this.imagen[0], 0, 0)
      this.botonSiguiente.dibujar()
        
    } else if (this.pantalla == 1) {
      image(this.imagen[1], 0, 0)
     this.botonVolver.dibujar()
     this.botonNoVa.dibujar()
     this.botonSiguiente.dibujar()
    text("La historia comienza con la madre de caperuza\npidiendole que vaya allevarle a la abuelauna torta\n¿Ella que hace?",width/3+100,height/2-350);
  } else if (this.pantalla == 2) {
      this.botonSiguiente.dibujar()
      image(this.imagen[2], 0, 0)
        this.botonVolver.dibujar()
        this.botonSiguiente.dibujar()
  text("Al salir y llegar al bosque,\n un lobo que pasaba por ahí ve la canasta que lleva\n y le pica la curiosidad por saber que lleva la niña",width/3+100,height/2-250);
    } else if (this.pantalla == 3) {
      image(this.imagen[3], 0, 0)
        this.juego.dibujar()
        this.botonVolver.dibujar()
        text("El lobo sale de su escondite\n y le pregunta a Caperucita que hay en la canasta,\n Ella contesta que una torta para su abuela\n El lobo quiere la canasta¿Se la da?",width-1000,height/5);
    } else if (this.pantalla == 4) {
      image(this.imagen[4], 0, 0)
      this.botonSiguiente.dibujar()
   text("El lobo la deja ir ante la negativa,\n pero idea un plan para conseguir la canasta",width/3+100,height/2-250);
    } else if (this.pantalla == 5) {
      image(this.imagen[5], 0, 0)
      this.botonSiguiente.dibujar()
         text("El lobo llega antes a la casa de la abuela y entonces...",width/3+100,height/2-250);
      
    } else if (this.pantalla == 6) {
      image(this.imagen[6], 0, 0)
      this.botonSiguiente.dibujar()
      text("Se la come de un bocado para disfrazarse de ella\n y poder conseguir la canasta",width/3+100,height/2-250);
        
    } else if (this.pantalla == 7) {
      image(this.imagen[7], 0, 0)
      this.botonSiguiente.dibujar()
       text("Un leñador pasaba por ahí\n buscando al lobo al ver que se dirigia a la casa de la abuela",width/3+100,height/2-250);
        
    } else if (this.pantalla == 8) {
      image(this.imagen[8], 0, 0)
      this.botonSiguiente.dibujar()
      push()
      fill(0,255,255)
       text("Caperucita llega para entregar la canasta \ny el lobo esta en la cama para disimular,\n entonces al obtener la canasta...",width/3+100,height/2-250);
        pop()
    } else if (this.pantalla == 9) {
      image(this.imagen[9], 0, 0)
        this.botonSiguiente.dibujar()
        text("Se descuida\n y deja ver la panza grandota por haberse comido a la abuela.\n El leñador llega y trae unas tijeras para liberar a la abuela",width/3+100,height/2-250);
    } else if (this.pantalla == 10) {
      image(this.imagen[10], 0, 0)
      this.botonIrAInicio.dibujar()
    }else if (this.pantalla == 11) {
      image(this.imagen[11], 0, 0)
      this.volverAJugar.dibujar()
       text("El lobo la atrapa y se la come junto con la canasta",width/3+100,height/2-250);
      this.botonIrAInicio.dibujar()
    }else if (this.pantalla == 12) {
      image(this.imagen[11], 0, 0)
      text("Caperucita no va a la casa de la abuela y, por tanto, nunca se encuentra con el lobo ni la abuela es comida por él",width/3+100,height/2-250);
      this.botonIrAInicio.dibujar()
    }
  }
 mouseClicked() {

    if (this.pantalla == 0) {
      this.botonSiguiente.mouseClicked()
     
    } else  if (this.pantalla == 1) {
       this.botonSiguiente.mouseClicked()
       this.botonNoVa.mouseClicked()
      this.botonVolver.mouseClicked()
    } else if (this.pantalla == 2) {
       this.botonVolver.mouseClicked()
        this.botonSiguiente.mouseClicked()

    } else if (this.pantalla == 3) {
      this.botonVolver.mouseClicked()
     
    } else if (this.pantalla == 4) {
      this.volverAJugar.mouseClicked()
        this.botonSiguiente.mouseClicked()
      
    } else if (this.pantalla == 5) {
      this.botonSiguiente.mouseClicked()
  
    } else if (this.pantalla == 6) {

      this.botonVolver.mouseClicked()
        this.botonSiguiente.mouseClicked()
  
    } else if (this.pantalla == 7) {

      this.botonSiguiente.mouseClicked()
        this.botonVolver.mouseClicked()
  
    } else if (this.pantalla == 8) {
      //FINAL 1
      this.botonSiguiente.mouseClicked()
        this.botonVolver.mouseClicked()
  
    } else if (this.pantalla == 9) {
      
       this.botonSiguiente.mouseClicked()
  
    }else if (this.pantalla == 10) {
      this.botonIrAInicio.mouseClicked()
  
    }else if (this.pantalla == 11) {
      //FINAL 2
      this.botonIrAInicio.mouseClicked()
      this.volverAJugar.mouseClicked()
    }else if (this.pantalla == 12) {
      //FINAL 3
      this.botonIrAInicio.mouseClicked()
    }
  }

  cambiarPantalla(param) {
    this.juego.reiniciar()
      console.log(this.pantalla)
      console.log(param)

      if (param == "siguiente" && this.pantalla < this.cantidadDePantallas) {
      this.pantalla++
    } else if (param == "volver" && this.pantalla > 0) {
      this.pantalla--
    } else if (param != "volver" && param != "siguiente") {
      this.pantalla=param
    }
  }

}
