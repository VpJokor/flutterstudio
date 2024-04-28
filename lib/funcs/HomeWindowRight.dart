
import 'package:flutter/material.dart';

import '../res/R.dart';

class HomeWindowRight extends StatelessWidget{
  const HomeWindowRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey.shade400,
      alignment: Alignment.center,
      child: const Text("右侧面板"),
    );
  }

}