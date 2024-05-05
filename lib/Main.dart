import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'funcs/home/Home.dart';
import 'res/R.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: R.theme.appTheme,
      home: HomePage(),
    );
  }
}