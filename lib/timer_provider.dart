import 'dart:async';
import 'package:flutter/material.dart';

class TimerProvider with ChangeNotifier {
  late Timer _timer;
  int _seconds = 0;

  TimerProvider() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _seconds++;
      notifyListeners();
    });
  }

  int get seconds => _seconds;

  void resetTimer() {
    _seconds = 0;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
