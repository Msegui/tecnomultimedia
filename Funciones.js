function programa() {
  switch(estado) {
  case 0:
    background(0)
      boton(width/2, height/2, width/2, "Inicio", 255, 0);
    break
    case 1:
    background(255)
      juego()
      break
  }
}

function boton(x, y, tam, texto, fondo, colorDeTexto) {
  push()

    fill(fondo)
    if (mousePress && dist(mouseX, mouseY, x, y) < tam / 2) {
    irA(texto)
  }

  circle(x, y, tam)
    fill(colorDeTexto)
    text(texto, x, y)

    pop()
}


function irA(texto) {

  if (texto == "Inicio") {
    estado = 1
  }
}


function juego() {
  push()
    personaje(personajeX, 50, 50)
    disparo()
    pop()
}

function personaje(personajeXParam, personajeTamX, personajeTamY) {

    if (avanzar == true) {
       personajeX++
    }
    if (retroceder == true) {
       personajeX--
    }
    if(descender == true){
       personajeY++
    }
    if(ascender == true){
       personajeY--
    }
  
  print(personajeX)

    rect(personajeXParam, personajeY, personajeTamX, personajeTamY)
}


function Enemigo() {
   
}
function disparo() {

   if (disparar == true && recarga == true) {
   
    balasY.push(windowHeight/2) 

      cuenta = 0 
      recarga = false 
  }

  
  for (let i = 0; i < balasY.length; i++) {
 
    balasY[i]-=   10

      if (balasY[i] <= 0) {
      
      balasY.splice(i, 1)
    }
    
  
    circle(width/2, balasY[i], 20)
  }
  
  cuenta++
    if (cuenta >= 30) {
    recarga = true
  }
 
  print("Cantidad de balas:", balasY.length)
}
