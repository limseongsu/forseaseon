import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  int selected = 0;

  void select(int index) {
    selected = index;
    notifyListeners();
  }
}