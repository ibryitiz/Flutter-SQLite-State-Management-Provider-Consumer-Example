import 'package:basic_shop_app/intro_screen.dart';
import 'package:basic_shop_app/viewModel/home_page_view_model.dart';
import 'package:basic_shop_app/viewModel/shop_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomePageViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ShopPageViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}
