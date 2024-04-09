import 'dart:math';

import 'package:flutter/material.dart';

class DiceProvider extends ChangeNotifier {
  DiceProvider() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      changeImage();
    });
  }
  final Random _random = Random();

  List<String> _images = [
    "lib/images/dice-1.png",
    "lib/images/dice-2.png",
    "lib/images/dice-3.png",
    "lib/images/dice-4.png",
    "lib/images/dice-5.png",
    "lib/images/dice-6.png",
  ];
  get images => _images;
  set images(final value) {
    _images = value;
    notifyListeners();
  }

  int _seciliIndex = 0;
  get seciliIndex => _seciliIndex;
  set seciliIndex(final value) {
    _seciliIndex = value;
    notifyListeners();
  }

  void changeImage() {
    seciliIndex = _random.nextInt(images.length);
  }
}
