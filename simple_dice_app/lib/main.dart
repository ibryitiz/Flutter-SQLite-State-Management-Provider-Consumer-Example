import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_dice_app/app.dart';
import 'package:simple_dice_app/provider/dice_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => DiceProvider(),
    child: const MyApp(),
  ));
}
