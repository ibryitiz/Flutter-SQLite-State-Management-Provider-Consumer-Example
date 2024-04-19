import 'package:flutter/material.dart';
import 'package:flutter_application/app.dart';
import 'package:flutter_application/providers/home_page_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomePageViewModel(),
      child: const MyApp(),
    ),
  );
}
