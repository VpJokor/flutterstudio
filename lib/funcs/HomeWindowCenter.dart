
import 'package:flutter/material.dart';

import '../res/R.dart';

class HomeWindowCenter extends StatelessWidget{
  const HomeWindowCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      child: const Text("中间窗口"),
    );
  }

}