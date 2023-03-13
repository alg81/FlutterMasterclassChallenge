import 'dart:ffi';
import 'dart:io';

class cardValidation {
  final String nCard;
  cardValidation({required this.nCard});

  void validation() {
    final validPre = _preValidation();
    if (validPre == true) {
      _validationCalc();
    }
  }

  bool? _preValidation() {
    final withoutContent = _empty();
    final regexPattern = _regexCard();

    if (withoutContent == true || regexPattern == false) {
      return false;
    } else {
      return true;
    }
  }

  bool _empty() {
    if (nCard.trim().isEmpty) {
      print('The Card Number must be typed.');
      return true;
    } else {
      return false;
    }
  }

  bool _regexCard() {
    final String noSignalCardNumber = nCard.replaceAll(RegExp(r'[/D\s]'), '');
    final bool isPatternCard =
        RegExp(r'([0-9]{4}[\s]?){3}[0-9]{4}').hasMatch(noSignalCardNumber);
    if (isPatternCard == false) {
      print("Card Number pattern dont match");
      return false;
    } else {
      return true;
    }
  }

  String? _validationCalc() {
    final String card = nCard.replaceAll(RegExp(r'[/D\s]'), '');
    //final cardNumbers = noSignalCardNumber.split('').map(int.parse);

    int lenCard = card.length;
    List<String> cardList = card.split("");
    List<int> lint = cardList.map(int.parse).toList();

    int sumAlg = 0;
    int sumTerm = 0;
    int term = 0;

    for (int i = 0; i < (lenCard - 1); i++) {
      if (i % 2 == 0) {
        term = lint[i] * 2;
      } else {
        term = lint[i];
      }

      if (term > 9) {
        List<String> term1 = term.toString().split("");
        sumAlg = int.parse(term1[0]) + int.parse(term1[1]);
        term = sumAlg;
      }

      sumTerm += term;
      // print('term: ${lint[i]} / term*2: $term / sumTerm: $sumTerm');
    }

    int checkDig = (10 - (sumTerm % 10)) % 10;

    (lint[lenCard - 1] == checkDig)
        ? print('Valid Card number.')
        : print('Invalid Card number.');
  }
}
