

import 'package:flutter/material.dart';

import '../../res/R.dart';

class HomeNavigationRight extends StatelessWidget{
  const HomeNavigationRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.white,
      child: Column(
        children: [
          LeftNavigationTab(title: "PreView",onTap: (){ print("点击导航栏1" ); },),
          LeftNavigationTab(title: "GitChat",onTap: (){ print("点击导航栏2" ); },),
          LeftNavigationTab(title: "ChatGPT",onTap: (){ print("点击导航栏2" ); },),
          LeftNavigationTab(title: "Learn",onTap: (){ print("点击导航栏2" ); },),
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
          /// 这里设置为 1 表示顺时针旋转90度
          quarterTurns: 1,
          child: Text(
            title ,
            style: R.style.textStyleNavigationLeftAndRight,
          ),
        ),
      ),
    );
  }
}

