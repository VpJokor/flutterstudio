
import 'package:flutterstudio/core/utils/logUtil.dart';
import 'package:get/get.dart';
import 'HomeAState.dart';

class HomeAController extends GetxController {
  final HomeAState state = HomeAState();

  HomeAController();

  @override
  void onInit() {
    super.onInit();
    logInfo(tag: state.tag, 'HomeAController onInit');
  }

  @override
  void onClose() {
    logInfo(tag: state.tag, 'HomeAController onClose');
  }

  @override
  void onReady() {
    logInfo(tag: state.tag, 'HomeAController onReady');
  }

}