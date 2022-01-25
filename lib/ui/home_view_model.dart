import 'package:flutter/foundation.dart';

class HomeViewModel with ChangeNotifier {
  int _counter = 0;

  // getter
  int get value => _counter;

  void incrementCounter() {
    _counter = _counter + 1;
    notifyListeners(); //通知
  }
}