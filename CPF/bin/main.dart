import 'dart:io';
import 'verifCPF.dart';

void main(List<String> args) {

  print('Digite o CPF a ser validado: ');
  String? S_CPF = stdin.readLineSync() ?? "";

  verifCPF(entradaCPF: S_CPF).CPFempty(S_CPF); // Testa se o CPF está vazio

  verifCPF(entradaCPF: S_CPF).CPFRegex(S_CPF); // Testa se o padrão REGEX do CPF é valido

  verifCPF CPF = verifCPF(entradaCPF: S_CPF);

  // Faz a validação dos dígitos verificadores e retorna um booleano
  CPF.testaCPF(S_CPF) ? print('CPF validado') : print('CPF inválido');
}
