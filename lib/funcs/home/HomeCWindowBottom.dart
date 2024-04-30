
import 'package:flutter/material.dart';

import '../../res/R.dart';

class HomeWindowBottom extends StatelessWidget{
  const HomeWindowBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        /// 设置最小高度
        minHeight: R.size.windowMinHeightHomeBottom,
      ),
      color: Colors.grey.shade100,
      alignment: Alignment.center,
      child: const Text("底部面板"),
    );
  }

}