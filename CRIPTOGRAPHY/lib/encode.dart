import 'dart:io';
import 'dart:math';

class Encode {
  late String rawText;
  Encode(this.rawText);

  void encodeText(String rawText) {
    List<int> textCharList = [];
    int rawTextLenght = rawText.length;
    dynamic rawtextUpper = rawText.toUpperCase();

    Random random = Random();
    List<int> randomKeyList = [];

    for (int i = 0; i < rawTextLenght; i++) {
      if (RegExp(r'[A-Z\s]').hasMatch(rawtextUpper[i])) {
        // testa letras maiúsculas e espaço
        textCharList.add(rawtextUpper
            .codeUnitAt(i)); // adiciona à lista o charcode da string
      } else {
        textCharList.add(
            int.parse(rawtextUpper[i])); // adiciona à lista o charcode do int
      }
      randomKeyList.add(random.nextInt(9));
    }
    stdout.writeln("");
    String randomKeyString = randomKeyList.join();
    stdout.writeln("Keep the Key to decode: $randomKeyString");

    final somaChar = List<int>.filled(rawTextLenght, 0, growable: false);
    for (int j = 0; j < rawTextLenght; j++) {
      if (textCharList[j] >= 65 && textCharList[j] <= 90) {
        somaChar[j] = textCharList[j] + randomKeyList[j];
        somaChar[j] = ((somaChar[j] % 26) + 65);
      } else {
        somaChar[j] = textCharList[j];
      }
    }

    dynamic returnChar =
        List<dynamic>.filled(rawTextLenght, 0, growable: false);
    for (int k = 0; k < rawTextLenght; k++) {
      if (somaChar[k] >= 65 && somaChar[k] <= 90) {
        returnChar[k] = String.fromCharCode(somaChar[k]);
      } else if (somaChar[k] == 32) {
        returnChar[k] = " ";
      } else {
        returnChar[k] = somaChar[k];
      }
    }

    stdout.writeln("Cyphered text: ${returnChar.join()}");
    stdout.writeln("");
  }
}
