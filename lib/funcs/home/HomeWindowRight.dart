
import 'package:flutter/material.dart';

import '../../res/R.dart';

class HomeWindowRight extends StatelessWidget{
  const HomeWindowRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        /// 设置最小宽度
        minWidth: R.size.windowMinWidthHomeLeft,
      ),
      color: Colors.grey.shade400,
      alignment: Alignment.center,
      child: const Text("右侧面板"),
    );
  }

}