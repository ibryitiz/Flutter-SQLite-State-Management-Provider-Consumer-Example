import 'package:flutter/material.dart';
import 'package:my_flutter_project/view/birinci_sayfa.dart';
import 'package:my_flutter_project/view_model/birinci_sayfa_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (BuildContext context) => BirinciViewModel(),
        child: BirinciSayfa(),
      ),
    );
  }
}
