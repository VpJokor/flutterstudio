
import 'package:flutter/material.dart';

import '../res/R.dart';

/// 主页底部导航栏
class HomeNavigationBottom extends StatelessWidget{
  const HomeNavigationBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: R.color.white,
      child: const Row(
        children: [
          BottomNavigationTab(title: "Git",),
          BottomNavigationTab(title: "TODO",),
          BottomNavigationTab(title: "Run",),
          BottomNavigationTab(title: "Command",),
          BottomNavigationTab(title: "Logcat",),
        ],
      ),
    );
  }

}


/// 底部导航栏按钮封装
/// 包含 一个 Title 和 对应的点击事件
class BottomNavigationTab extends StatelessWidget{

  final String title;
  final GestureTapCallback? onTap;

  const BottomNavigationTab({super.key,required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
        child: Text(
          title ,
          style: const TextStyle(fontSize: R.size.bottomNavigationTextSize,fontWeight: FontWeight.w500,color: Colors.black,decoration: TextDecoration.none,),
        ),
      ),
    );
  }
}