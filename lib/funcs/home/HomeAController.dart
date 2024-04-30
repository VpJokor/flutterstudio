
import 'package:flutterstudio/core/utils/logUtil.dart';
import 'package:get/get.dart';

class HomeAController extends GetxController {

  final String _tag = "HomeAController";

  HomeAController();

  @override
  void onInit() {
    super.onInit();
    logInfo(tag: _tag, 'HomeAController onInit');
  }

  @override
  void onClose() {
    logInfo(tag: _tag, 'HomeAController onClose');
  }

  @override
  void onReady() {
    logInfo(tag: _tag, 'HomeAController onReady');
  }

}