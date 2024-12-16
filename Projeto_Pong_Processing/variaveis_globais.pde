PImage imgMenu; //Imagem da tela de início
PImage imgLight; //Fundo do jogo em light mode
PImage imgDark; //Fundo do jogo em dark mode

//Variáveis da bola
//Posições X e Y de inicialização da bola
int spawnX = 0;
int spawnY = 0;
//Posições X e Y da bola
int bolaX = 0;
int bolaY = 0;
//Incremento vertical e horizontal da bola
int dX = 5;
int dY = 2;

//Pontuação
int contRight = 0;
int contLeft = 0;

//Posição das barras
int posRight = 500; 
int posLeft = 0; 

//Coordenadas das barras
float rectYR = 0;
int rectXR = 1100;
float rectYL = 0;
int rectXL = 100;

float ldr = 0;

int interruptor = 0;
