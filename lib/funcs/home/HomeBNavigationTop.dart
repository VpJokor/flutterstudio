import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../res/R.dart';

/// 主页顶部导航栏

class HomeNavigationTop extends StatelessWidget{
  const HomeNavigationTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.white,
      margin: const EdgeInsets.only(left:40,right: 10),
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
          const Spacer(),
          // Container(decoration: ,),
          SizedBox(width: 10),
          Icon(Icons.play_arrow_sharp),
          SizedBox(width: 10),
          Icon(Icons.replay_5_rounded),
          SizedBox(width: 10),
          Icon(Icons.stop),
          SizedBox(width: 130),
          Icon(Icons.account_circle_outlined),
        ],
      ),
    );
  }
}

/// 顶部导航栏按钮封装
/// 包含 一个 Title 和 对应的点击事件
/// 参考帖子 https://juejin.cn/post/7357301805569900555?searchId=20240505005924BD8E9C58EC1D421B225E
class TopNavigationTab extends StatelessWidget{

  final String title;
  final GestureTapCallback? onTap;

  const TopNavigationTab({super.key,required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: R.padding.homeNavigationPaddingTop,
      alignment: Alignment.center,
      // child: Text(title),
      child: SubmenuButton(
        menuChildren: [
          MenuItemButton(
            child: Text('导出 PNG'),
            // shortcut: SingleActivator(LogicalKeyboardKey.keyO, control: true),
            onPressed: () {
              print("======导出 PNG==========");
            },
          ),
          MenuItemButton(
            child: Text('导出 SVG'),
            onPressed: () {
              print("======导出 SVG==========");
            },
          ),
        ],
        child: Text(title),
      ),
    );
  }
}



class MenuEntry {
  const MenuEntry({
    required this.label,
    this.action,
    this.tail,
    this.shortcut,
    this.menuChildren,
  });

  final String label;
  final String? tail;
  final MenuAction? action;
  final MenuSerializableShortcut? shortcut;
  final List<MenuEntry>? menuChildren;
}

enum MenuAction{
  newFile,
  openFile,
  importFile,
  saveFile,
  outputFilePng,
  outputFileJpg,
  outputFileSvg,
  back,
  undo,
  copy,
  past,
  clear,
}
