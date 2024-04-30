
import 'package:get/get.dart';

/// 控制全局的配置信息
class Config extends GetxController{

  static Config logic() {
    if (Get.isRegistered<Config>()) {
      return Get.find<Config>();
    }
    return Get.put(Config(), permanent: true);
  }

}
