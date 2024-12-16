void bola() {
  //Inicializa a bola
  ellipse(bolaX, bolaY, 20, 20);
  
  //Faz a bola mexer
  bolaX+=dX;
  bolaY+=dY;
  
  //Inicializa a pontuação
  textSize(35);
  text(contLeft, 500, 45);
  text(contRight, 650, 45);
  
  //Checa se a bola colidou com a barra direita
  if (bolaX == rectXR && (bolaY >= rectYR && bolaY <= rectYR + 100)) { 
    dX = -dX; //inverte o incremento
  }
 
  //Checa se a bola colidou com a barra esquerda
  if (bolaX == rectXL && (bolaY >= rectYL && bolaY <= rectYL + 100)){
    dX = -dX; //inverte o incremento
  }
  
  //Checa se colidou com a parede de cima ou de baixo
  if (bolaY >= height-10 || bolaY <= 10) {
    dY = -dY; //inverte o incremento
  }
  
  //Checha se a bola passou da parede direita
  if (bolaX >= width) {
    //reinicia a bola
    bolaX = spawnX;
    bolaY = spawnY;
    dX = -dX;
    contLeft++;
  }
  
  //Checha se a bola passou da parede esquerda
  if (bolaX <= 0) {
    //reinicia bola
    bolaX = spawnX;
    bolaY = spawnY;
    dX = -dX;
    contRight++;
  }
} 
