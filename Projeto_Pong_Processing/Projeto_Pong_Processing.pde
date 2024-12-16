import processing.serial.*;
Serial port;

void setup() {
  size(1200,600);
  spawnX = width/2;
  spawnY = height/2;
  bolaX = spawnX;
  bolaY = spawnY;
  port = new Serial(this, Serial.list()[1],9600);
  imgMenu = loadImage("menu.jpg");
  imgLight = loadImage("light-mode.jpg");
  imgDark = loadImage("dark-mode.jpg");
  frameRate(60);
}

void draw() {
  while (port.available() > 0){ //verifica se há porta disponível
    String mensagem = port.readStringUntil('\n'); //lê a mensagem recebida até a quebra de linha
    if (mensagem != null){ //verifica se a mensagem enviada não é nula
      String[] data = mensagem.split(" "); //divide em um array a string da mensagem baseada nos espaços vazios ' '
      if(data.length == 4){ //se houverem 4 dados na mensagem
        interruptor = int(data[0].trim());
        if(interruptor == 1){ //se o botão for apertado e estiver em estado 1, leva ao jogo
          posRight = int(data[1].trim()); //posição da barra direita
          posLeft = int(data[2].trim()); //posição da barra esquerda
          ldr = int(data[3].trim()); //dados do LDR
          if (ldr > 950){ //se o ambiente estiver escuro, muda para o modo claro
            image(imgLight, 0, 0);
            fill(22, 49, 17);
          }
          else { //se o ambiente estiver claro, muda para o modo escuro
            image(imgDark, 0, 0);
            fill(103, 174, 89);
          }
          //mapeando os valores do potenciômetro para coordenadas de movimento da barra
          rectYR = map(posRight, 0, 1023, 0, 500);
          rectYL = map(posLeft, 0, 1023, 0, 500);
          //função de spawn da bola
          bola();
          //inicialização das barras
          rect(rectXR, rectYR, 20, 100); //direita
          rect(rectXL, rectYL, 20, 100); //esquerda
        }
        else{ //se o botão for apertado e estiver em estado 0, leva ao menu principal
          image(imgMenu, 0, 0);
        }          
      }
    }
  }
}
