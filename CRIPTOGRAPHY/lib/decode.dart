import 'dart:io';
import 'dart:math';

class Decode {
  late String rawCypheredText;
  late String keyDecode;
  Decode(this.rawCypheredText, this.keyDecode);

  void decodeText(String rawCypheredText, String keyDecode) {
    final dynamic rawCypheredTextUpper = rawCypheredText.toUpperCase();
    final int rawCypherTextLenght = rawCypheredText.length;
    final int keyCodeLenght = keyDecode.length;
    final List<String> keyList = keyDecode.split("");
    final List<int> keyListInt = keyList.map(int.parse).toList();

    dynamic CypheredTextUpperList = [];

    if (rawCypherTextLenght != keyCodeLenght) {
      stdout.writeln(
          'The cypher text lenght and key decode lenght is not the same');
      exit(4);
    } else {
      // Create the Charcode List
      for (int m = 0; m < rawCypherTextLenght; m++) {
        if (RegExp(r'[A-Z\s]').hasMatch(rawCypheredTextUpper[m])) {
          // testa letras maiúsculas e espaço
          CypheredTextUpperList.add(rawCypheredTextUpper
              .codeUnitAt(m)); // adiciona à lista o charcode da string
        } else {
          CypheredTextUpperList.add(int.parse(
              rawCypheredTextUpper[m])); // adiciona à lista o charcode do int
        }
      }

      final somaCypherChar =
          List<int>.filled(rawCypherTextLenght, 0, growable: false);
      // Uses the decode algorithm
      for (int n = 0; n < rawCypherTextLenght; n++) {
        if (CypheredTextUpperList[n] >= 65 && CypheredTextUpperList[n] <= 90) {
          somaCypherChar[n] = (CypheredTextUpperList[n] - keyListInt[n]) + 26;
          somaCypherChar[n] = ((somaCypherChar[n] % 26) + 65);
        } else {
          somaCypherChar[n] = CypheredTextUpperList[n];
        }
      }

      dynamic returnClearText =
          List<dynamic>.filled(rawCypherTextLenght, 0, growable: false);
      for (int p = 0; p < rawCypherTextLenght; p++) {
        if (somaCypherChar[p] >= 65 && somaCypherChar[p] <= 90) {
          returnClearText[p] = String.fromCharCode(somaCypherChar[p]);
        } else if (somaCypherChar[p] == 32) {
          returnClearText[p] = " ";
        } else {
          returnClearText[p] = somaCypherChar[p];
        }
      }
      stdout.writeln("Clear text: ${returnClearText.join()}");
    }
  }
}
