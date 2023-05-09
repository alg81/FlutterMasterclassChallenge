import 'package:flutter/material.dart';

class DarkController extends ChangeNotifier {
  static DarkController instance = DarkController();

  bool isdark = false;

  void darkclicked() {
    isdark = !isdark;
    print(isdark);
    notifyListeners();
  }
}
