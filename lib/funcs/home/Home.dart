
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeAController.dart';
import 'HomeAState.dart';
import 'HomeBNavigationBottom.dart';
import 'HomeBNavigationLeft.dart';
import 'HomeBNavigationRight.dart';
import 'HomeBNavigationTop.dart';
import 'HomeCWindowBottom.dart';
import 'HomeCWindowCenter.dart';
import 'HomeCWindowLeft.dart';
import 'HomeCWindowRight.dart';

/// FlutterCheck 主页
class HomePage extends StatelessWidget{
  HomePage({super.key});

  final HomeAController controller = Get.put(HomeAController());
  final HomeAState state = Get.find<HomeAController>().state;
  
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
                             /// 左侧窗口
                             HomeWindowLeft(),
                             /// 中间窗口
                             Expanded(
                               child: HomeWindowCenter(),
                             ),
                             /// 右侧窗口
                             HomeWindowRight(),
                           ],
                         ),
                       ),
                      /// 底部窗口
                      HomeWindowBottom(),
                      /// 底部导航栏
                      HomeNavigationBottom(),
                    ],
                  ),
                ),
                /// 右侧导航
                HomeNavigationRight(),
              ],
            ),
          ),
        ],
      ),
    );
  }

}