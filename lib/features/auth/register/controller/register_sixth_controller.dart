import 'dart:async';

import 'package:get/get.dart';

class RegisterSixthController extends GetxController {
  int activeColor = 0xFF0A72C6;
  int passiveColor = 0xFF00182B;

  var switchIt = false.obs;

  void switchToField() {
    switchIt.value = true;
  }

  var timer = 0.obs;
  Timer? _timerInstance;

  void startTimer() {
    _timerInstance?.cancel();
    _timerInstance = Timer.periodic(const Duration(seconds: 1), (timer) {
      this.timer.value = timer.tick;
    });
  }
}
