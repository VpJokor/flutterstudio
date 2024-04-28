
import 'package:FlutterCheck/funcs/HomeNavigationBottom.dart';
import 'package:FlutterCheck/funcs/HomeNavigationLeft.dart';
import 'package:FlutterCheck/funcs/HomeNavigationRight.dart';
import 'package:FlutterCheck/funcs/HomeNavigationTop.dart';
import 'package:FlutterCheck/funcs/HomeWindowBottom.dart';
import 'package:FlutterCheck/funcs/HomeWindowCenter.dart';
import 'package:FlutterCheck/funcs/HomeWindowLeft.dart';
import 'package:flutter/material.dart';

import 'HomeWindowRight.dart';

/// FlutterCheck 主页
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //顶部导航栏
          HomeNavigationTop(),
          Expanded(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //左侧导航栏
                HomeNavigationLeft(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                       Expanded(
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [
                             //左侧窗口
                             HomeWindowLeft(),
                             //中间窗口
                             Expanded(
                               child: HomeWindowCenter(),
                             ),
                             //右侧窗口
                             HomeWindowRight(),
                           ],
                         ),
                       ),
                      // //底部窗口
                      HomeWindowBottom(),
                      // //底部导航栏
                      HomeNavigationBottom(),
                    ],
                  ),
                ),
                //右侧导航
                HomeNavigationRight(),
              ],
            ),
          ),
        ],
      ),
    );
  }

}