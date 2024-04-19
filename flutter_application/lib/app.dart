import 'package:flutter/material.dart';
import 'package:flutter_application/views/home_page_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
