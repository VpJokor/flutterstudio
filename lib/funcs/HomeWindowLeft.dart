
import 'package:flutter/material.dart';

import '../res/R.dart';

class HomeWindowLeft extends StatelessWidget{
  const HomeWindowLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey.shade300,
      child: const Text("左侧面板"),
    );
  }

}