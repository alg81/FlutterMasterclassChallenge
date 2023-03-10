import 'dart:io';
import 'package:collection/collection.dart';

class verifCPF {
  final String entradaCPF;
  verifCPF({required this.entradaCPF});

  void CPFempty(String entradaCPF) {
    bool? empty = entradaCPF.isEmpty;
    if (empty == true) {
      print('O CPF não foi digitado.');
      exit(1);
    }
  }

  void CPFRegex(String entradaCPF) {
    final bool isCPF =
        entradaCPF.contains(RegExp(r'([0-9]{3}[\.]?){2}[0-9]{3}[\-]?[0-9]{2}'));
    if (isCPF == false) {
      print('Padrão REGEX do CPF não válido.');
      exit(0);
    }
  }

  bool testaCPF(String entradaCPF) {
    final List<String> lista = []; // Lista vazia para inclusão do CPF a ser avaliado
    final List<int> listaVerif = []; // Lista que será montada com os digitos verificadores

    final String cpf = entradaCPF.replaceAll(RegExp(r'[\D]'), ''); // retira o . e - da String entradaCPF
    int len_cpf = cpf.length;
    
    // Transforma o nº do CPF numa lista de String
    for (int i = 0; i < len_cpf; i++) {
      lista.add(cpf[i]);
    }

    // Converte a lista de String do CPF em lista int
    final List<int> lint = lista.map(int.parse).toList();

    // Variavel para armazenar a soma para verificação do 1º digito
    int soma_dig1 = 0;

    // loop nos 9 dígitos, multiplicando por 10, 9 , 8 ... 2
    for (int j = 0; j < (len_cpf - 2); j++) {
      soma_dig1 = soma_dig1 + lint[j] * (10 - j); // faz a soma dos 9 termos
      listaVerif.add(lint[j]); // Cria uma lista somente com os 9 termos, para depois serem adicionados os dígitos verificadores
    }

    int resto1 = soma_dig1 % 11; // calcula o resto
    int? digito1;
    (resto1 < 2) ? digito1 = 0 : digito1 = 11 - resto1;

    listaVerif
        .add(digito1); // adiciona o PRIMEIRO digito verificador na listaVerif

    int soma_dig2 = 0;

    // loop nos 10 dígitos, multiplicando por 11, 10, 9 , 8 ... 2
    for (int k = 0; k < (listaVerif.length); k++) {
      soma_dig2 =
          soma_dig2 + listaVerif[k] * (11 - k); // faz a soma dos 10 termos
    }

    int resto2 = soma_dig2 % 11;
    int? digito2;
    (resto2 < 2) ? digito2 = 0 : digito2 = 11 - resto2;

    listaVerif
        .add(digito2); // adiciona o SEGUNDO digito verificador na listaVerif

    print("Lista     : $lint");
    print("ListaVerif: $listaVerif");

    Function eq = const ListEquality().equals;
    return (eq(lint, listaVerif));
  }
}
