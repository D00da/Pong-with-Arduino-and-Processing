# Pong with Arduino and Processing
Programa criado para testar a integração entre o Arduino e a linguagem Processing por meio do clássico jogo Pong. Projeto feito na cadeira de Instalações Multimídia, semestre 2023.2.

Nosso objetivo era recriar uma versão multiplayer de 2 jogadores do clássico jogo Pong, fazendo uso do que foi apresentado em sala: componentes físicos como LED, LDR, potenciômetro, botão e protoboard, junto da integração Arduino-Processing.

![menu](https://github.com/user-attachments/assets/b331b2f1-3ebe-45bf-9e36-512ff20d79e1)

Para a construção da parte física do nosso projeto, utilizamos as seguintes peças:
>Potenciômetro (2 no total, ligados no shield): Funcionam como joysticks, cada um controlando um dos jogadores (as barras do jogo).
>Botão (1 no total, ligado no shield): Funciona para iniciar e parar o jogo.
>LED (1 no total, ligado diretamente no Arduino): Indica quando o jogo está ligado. Ao apertar o botão para iniciar o jogo, o LED acende, e ao apertar para desligar, o LED apaga.
>LDR (1 no total, junto de 1 resistor, conectado na Protoboard): Funciona para mudar o modo de contraste do jogo. Em ambientes muito iluminados, entrará no dark mode, em ambientes escuros, entrará no light mode.
>Protoboard (junto de vários jumpers): Com várias conexões feitas, é necessário o uso da protoboard para estender o uso das portas do Arduino, possibilitando maior liberdade na prototipação.
>Arduino Uno (óbvio): A peça principal desse processo inteiro.

Optamos também por utilizar um shield em cima do Arduino, para conectar os dois potenciômetros e o botão, já que serão as peças que os jogadores mais terão contato e as que apresentaram maior problemas de mau contato ao longo do processo de prototipação. Eles foram conectados da seguinte forma:
![Placa](https://github.com/user-attachments/assets/b895cdd8-d4b7-4529-8780-7bcd0cfe5664) 
![Shields](https://github.com/user-attachments/assets/23f0ffd0-70ff-4899-9795-d3a9e3b7e150)

O Arduino é a parte física do sistema, recebendo diretamente os inputs dos usuários. Já o Processing, é a parte visual do sistema, recebendo do Arduino os inputs dos usuários e refletindo em alterações no jogo ou na interface.

O estado da variável interruptor (controlado pelo apertar do botão) determina o estado do jogo: O jogo inicia no menu (estado 0), se o botão for apertado (mudando para o estado 1), inicia os processos do jogo (explicados logo depois), e caso seja apertado novamente, retorna ao menu, e assim sucessivamente. Funcionando da seguinte forma:

![image](https://github.com/user-attachments/assets/0df5d1d3-9e48-4cb4-addf-ac71934b3b6e)

O LDR é utilizado para controlar o modo de contraste do jogo, em ambientes claros, é usada a imagem do dark mode, já em ambientes escuros, é usada a imagem do light mode. A cor das barras, bola e do texto da pontuação também acompanha a mudança de modo de contraste.

![image](https://github.com/user-attachments/assets/a77e0ab0-1372-4b23-b433-cce6814adab4)

# Produto Final
![Protótipo Placa + Protoboard 01](https://github.com/user-attachments/assets/87d5fae3-c2fd-40d2-a7f6-1c991ef6207e)

