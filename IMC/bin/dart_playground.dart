// Funcao que calcula o IMC a partir do peso e altura.
void IMC(double peso, double altura) {
  double imc;
  imc = (peso / (altura * altura));
  print('O IMC é: $imc');
}

void main(List<String> arguments) {
  // Passando o peso e altura diretamente no código
  double peso = 88;
  double altura = 1.7;

  IMC(peso, altura);
}
