const int buttonPin = 8; //pino do botão
int buttonState = 0; //estado do botão

//estado interruptor
bool interruptor = false;

void setup(){
  pinMode(A0,INPUT); //player direita
  pinMode(A1,INPUT); //player esquerda
  pinMode(A2, INPUT); //LDR
  pinMode(13, OUTPUT); //LED
  pinMode(buttonPin, INPUT); //Botão
  Serial.begin(9600);
}

void loop(){ 
  buttonState = digitalRead(buttonPin);

  //Verifica se o botão foi apertado
  //Se o botão for apertado, muda o estado
  //Mantém o estado até que o botão seja pressionado de novo
  if(buttonState == HIGH){
    interruptor = !interruptor;
    delay(500);
  }

  //Se o estado do interruptor for 1, o LED é aceso
  if (interruptor){
    digitalWrite(13, 1);
  }
  //Se o estado do interruptor for 0, o LED é apagado
  else{
    digitalWrite(13, 0);
  }
  
  int right = analogRead(0); //jogador da direita
  int left = analogRead(1); //jogador da esquerda
  int ldr = analogRead(2);

  //Mensagem enviada na porta serial
  Serial.print(interruptor);
  Serial.print(" ");
  Serial.print(right);
  Serial.print(" ");
  Serial.print(left);
  Serial.print(" ");
  Serial.print(ldr);
  Serial.print("\n");
  delay(16);
}
 
