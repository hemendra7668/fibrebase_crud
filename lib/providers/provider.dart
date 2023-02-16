import 'package:flutter/Material.dart';

class PushToData extends ChangeNotifier {
  late String title;

  String get getname => title;

  void setTitle(String t) {
    title = t;
    notifyListeners();
  }
}
