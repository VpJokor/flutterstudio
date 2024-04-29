

import 'package:flutter/material.dart';
import '../../res/R.dart';


class HomeNavigationLeft extends StatelessWidget{
  const HomeNavigationLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.white,
      child: Column(
        children: [
          LeftNavigationTab(title: "Project",onTap: (){ print("点击导航栏1" ); },),
          LeftNavigationTab(title: "Resources",onTap: (){ print("点击导航栏3" ); },),
          LeftNavigationTab(title: "Commit",onTap: (){ print("点击导航栏2" ); },),
          LeftNavigationTab(title: "BookMarks",onTap: (){ print("点击导航栏3" ); },),
        ],
      ),
    );
  }

}

/// 左侧导航栏按钮封装
/// 包含 一个 Title 和 对应的点击事件
/// 使用 RotatedBox 把组件逆时针旋转90度
class LeftNavigationTab extends StatelessWidget{

  final String title;
  final GestureTapCallback? onTap;

  const LeftNavigationTab({super.key,required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: R.padding.homeNavigationPaddingLeftAndRight,
        child: RotatedBox(
          // 这里设置为 -1 表示逆时针旋转90度
          quarterTurns: -1,
          child: Text(
            title ,
            style: R.style.textStyleNavigationLeftAndRight,
          ),
        ),
      ),
    );
  }
}

