// Funcao que calcula o IMC a partir do peso e altura.
import 'dart:io';

void IMC(double peso, double altura) {
  double imc;
  imc = (peso / (altura * altura));
  String imc_doisDigitos = imc.toStringAsFixed(2);
  print('O IMC é: $imc_doisDigitos');
}

void main(List<String> arguments) {
  // Recebendo o peso e altura através da linha de comando.

  print("Digite o peso: ");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite a altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  IMC(peso, altura);
}
