import 'dart:io';
import 'validation.dart';

void main(List<String> args) {
  print("Type the Card Number : ");
  String? nCard = (stdin.readLineSync()) ?? ''; // Precisava disso?

  if (nCard == null) {
    print('The Credit Card number is empty.');
    exit(0);
  } else {
    cardValidation card = cardValidation(nCard: nCard);
    card.validation();
  }
}
