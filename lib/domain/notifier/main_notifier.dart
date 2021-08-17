import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainNotifier extends ChangeNotifier {
  int _index = 0;
  int categoryId = 0;
  int get index => _index;
  int _messageCount = 0;

  int get messageCount => _messageCount;

  void changeIndex(int index) {
    _index = index;
    notifyListeners();
  }

  void setIndex(int index) {
    _index = index;
  }

  void setCategoryId(int index) {
    categoryId = index;
  }

  void changeMessageCount(int index) {
    _messageCount = index;
    notifyListeners();
  }

  void setMessageCount(int index) {
    _messageCount = index;
  }
}
