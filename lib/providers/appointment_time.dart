import "package:flutter/material.dart";

class AppointmentTimeProvider extends ChangeNotifier {
  int current = 0;

  void updateTime(int index) {
    current = index;
    notifyListeners();
  }
}
