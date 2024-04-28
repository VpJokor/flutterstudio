
import 'package:flutter/material.dart';

import '../res/R.dart';

class HomeWindowBottom extends StatelessWidget{
  const HomeWindowBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey.shade100,
      child: const Text("底部面板"),
    );
  }

}