import 'package:flutter/material.dart';

import '../res/R.dart';

/// 主页顶部导航栏
class HomeNavigationTop extends StatelessWidget{
  const HomeNavigationTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.white,
      child: Row(
        children: [
          TopNavigationTab(title: "导航栏1",onTap: (){ print("点击导航栏1" ); },),
          TopNavigationTab(title: "导航栏2",onTap: (){ print("点击导航栏2" ); },),
          TopNavigationTab(title: "导航栏3",onTap: (){ print("点击导航栏3" ); },),
          TopNavigationTab(title: "导航栏4",onTap: (){ print("点击导航栏4" ); },),
        ],
      ),
    );
  }
}

/// 顶部导航栏按钮封装
/// 包含 一个 Title 和 对应的点击事件
class TopNavigationTab extends StatelessWidget{

  final String title;
  final GestureTapCallback? onTap;

  const TopNavigationTab({super.key,required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
        child: Text(
          title ,
          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black,decoration: TextDecoration.none,),
        ),
      ),
    );
  }
}