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
          /// File： new(Project,File,Directory,DartFile) , Recent Project , Open Project , Open File , Invalidate Caches , Save All
          TopNavigationTab(title: "File",onTap: (){ print("点击导航栏1" ); },),
          /// Settings:  Apperance , Flutter , Shortcut Keys , Device
          TopNavigationTab(title: "Settings",onTap: (){ print("点击导航栏2" ); },),
          ///
          TopNavigationTab(title: "Tools",onTap: (){ print("点击导航栏3" ); },),
          /// Git:  Commit , Push , Update , Pull , Fetch , Merge ,Rebase , Patch , Show GitLog , undoCommit , Current File
          TopNavigationTab(title: "Git",onTap: (){ print("点击导航栏4" ); },),
          /// Help: Flutter Studio Help , What News , Licenses , Check for update , About
          TopNavigationTab(title: "Help",onTap: (){ print("点击导航栏4" ); },),
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