
import 'package:get/get.dart';

/// 控制全局的配置信息
class Config extends GetxController{

  /// Config单例模式的简化写法
  /// 在需要使用Config单例实例的地方直接调用以下代码
  /// final Config config = Config();
  static final Config _instance = Config._internal();
  factory Config() => _instance;
  Config._internal();


}
