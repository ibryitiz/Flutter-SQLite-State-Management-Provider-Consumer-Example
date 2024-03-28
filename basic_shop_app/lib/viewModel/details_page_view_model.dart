import 'package:basic_shop_app/model/urun.dart';
import 'package:flutter/material.dart';

class DetailsPageViewModel extends ChangeNotifier {
  final Urun _urun;
  Urun get urun => _urun;
  DetailsPageViewModel(this._urun);
  //* quantity
  int _value = 1;
  int get value => _value;

  void increase() {
    _value += 1;
    notifyListeners();
  }

  void decrease() {
    _value -= 1;
    notifyListeners();
    if (_value <= 0) {
      _value = 1;
    }
  }

  //* Size

  final List<String> _sizes = ["S", "M", "L"];
  List<String> get sizes => _sizes;

  // sizes on tap

  bool _tap = false;
  bool get tap => _tap;
  void onTap() {
    if (_tap2 == false && _tap3 == false) {
      _tap = !_tap;
    }
    notifyListeners();
  }

  bool _tap2 = false;
  bool get tap2 => _tap2;
  void onTap2() {
    if (_tap == false && _tap3 == false) {
      _tap2 = !_tap2;
    }
    notifyListeners();
  }

  bool _tap3 = false;
  bool get tap3 => _tap3;
  void onTap3() {
    if (_tap == false && _tap2 == false) {
      _tap3 = !_tap3;
    }
    notifyListeners();
  }
}
