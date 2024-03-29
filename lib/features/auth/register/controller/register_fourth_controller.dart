import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterFourthController extends GetxController {
  int activeColor = 0xFF0A72C6;
  int passiveColor = 0xFF00182B;

  var selectedValue = 0.obs;
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];

  void showDialog(Widget child) {
    Get.bottomSheet(
     Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(Get.context!).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(Get.context!),
        child: SafeArea(
          top: false,
          child: child, // child değişkeninizin tanımlı olduğundan emin olun
        ),
      ),
    );
  }
}
