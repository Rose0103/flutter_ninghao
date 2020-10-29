import 'package:flutter/material.dart';

class Counters with ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    notifyListeners(); //通知改变
  }

}