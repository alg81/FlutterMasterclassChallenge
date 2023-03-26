import 'dart:io';
import 'package:criptography/encode.dart';
import 'package:criptography/decode.dart';

void main(List<String> arguments) {
  Option();
}

void Option() {
  int FLAG = 1;

  while (FLAG == 1) {
    stdout.writeln(
        "Choose the option 1 - to encode or 2 - to decode the sentence: ");
    String? options = stdin.readLineSync();

    if (options! == "") {
      stdout.write("You must choose an option.\n");
    } else if (options == "1" || options == "2") {
      FLAG = 0;
      choosedOption(options);
    } else {
      stdout.writeln("Invalid option.\n");
    }
  }
}

void choosedOption(String op) {
  final int option = int.parse(op);
  if (option == 1) {
    stdout.writeln('Type the readable sentence:');
    final String? rawText = stdin.readLineSync();
    if (textEmptyness(rawText) == true) {
      stdout.writeln('The text is empty');
      exit(1);
    } else {
      Encode encode = Encode(rawText!);
      encode.encodeText(rawText);
    }
  } else {
    stdout.writeln('Type the cyphered text:');
    final String? rawCypheredText = stdin.readLineSync();

    stdout.writeln('Type the key to decode the text:');
    final String? keyDecode = stdin.readLineSync();
    stdout.writeln("");

    if (textEmptyness(rawCypheredText) == true) {
      stdout.writeln('The text is empty');
      exit(2);
    } else if (textEmptyness(keyDecode) == true) {
      stdout.writeln('The key is empty');
      exit(3);
    } else {
      Decode decode = Decode(rawCypheredText!, keyDecode!);
      decode.decodeText(rawCypheredText, keyDecode);
    }
  }
}

bool? textEmptyness(String? rawText) {
  if (rawText != null) {
    if (rawText.isEmpty == true) {
      return true;
    } else {
      return false;
    }
  }
  return true;
}
