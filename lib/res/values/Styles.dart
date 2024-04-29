
import 'package:flutter/material.dart';

import '../R.dart';

/// 这里放风格样式，如字体风格
class Styles {

  /// 顶部导航栏字体样式
  TextStyle textStyleNavigationTop = TextStyle(fontSize: R.size.textSizeNavigationTop,fontWeight: FontWeight.w500,color: Colors.black,decoration: TextDecoration.none,);
  /// 左右导航栏字体样式
  TextStyle textStyleNavigationLeftAndRight = TextStyle(fontSize: R.size.textSizeNavigationLeftAndRight,fontWeight: FontWeight.w500,color: Colors.black,decoration: TextDecoration.none,);
  /// 底部导航栏字体样式
  TextStyle textStyleNavigationBottom = TextStyle(fontSize: R.size.textSizeNavigationBottom,fontWeight: FontWeight.w500,color: Colors.black,decoration: TextDecoration.none,);

  /// 正文字体样式
  TextStyle textStyleContent = TextStyle(color: R.color.black,fontSize: 14 , fontWeight: FontWeight.normal,decoration: TextDecoration.none,);


}