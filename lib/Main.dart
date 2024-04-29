import 'package:flutter/material.dart';
import 'funcs/home/Home.dart';
import 'res/R.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: R.theme.appTheme,
      home: HomePage(),
    );

  }
}

