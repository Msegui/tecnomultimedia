let estado = 0
  let pressed = false
  let personajeY, personajeX
  let velocidad = 1
  let disparar 
  let recarga = true
  let cuenta 
  let balasY = [] 
  let width = window.innerWidth
  let height = window.innerHeight
  let mousePress
  let avanzar
  let retroceder
  let descender
  let ascender
  
  function setup() {
  createCanvas(width, height)
    textSize(28)
    textAlign(CENTER)
    personajeY = height/2
    personajeX = width/2
    for (let i = 0; i < balasY.length; i++) {
    balasY[i]= windowWidtht/2
    
  }
}

function draw () {
  programa()
}

function keyPressed() {
  if (key == 'w'|| key == 'W') {
    ascender  = true
  }
  if (key == 's'|| key == 'S') {
    descender  = true
  }

  if (key == 'a' || key == 'A') {
    retroceder=true;
  }
  if (key == 'd' || key == 'D') {
    avanzar=true;
  }
    if (key == " ") {
    disparar = true
  }
}

function keyReleased() {
  if (key == 'a' || key == 'A') {
    retroceder=false
  }
  if (key == 'd' || key == 'D') {
    avanzar=false
  }
   if (key == 's'|| key == 'S') {
    descender  = false
  }
  if (key == 'w'|| key == 'W') {
    ascender  = false
    }
    if (key == " ") {
    disparar = false
  }
}


function mousePressed() {
  mousePress = !mousePress
}
