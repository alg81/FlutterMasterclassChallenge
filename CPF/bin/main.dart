import 'verifCPF.dart';

void main(List<String> args) {
  String S_CPF = '03840073413';
  verifCPF CPF = verifCPF(entradaCPF: S_CPF);
  CPF.testaCPF(S_CPF) ? print('CPF Validado') : print('CPF INVÁLIDO!');
}