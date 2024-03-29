import 'package:get/get.dart';

class RegisterThirdController extends GetxController {
  int activeColor = 0xFF0A72C6;
  int passiveColor = 0xFF00182B;
  var isMaleSelected = false.obs;
  var isFemaleSelected = false.obs;

  void selectMale() {
    isMaleSelected.value = true;
    isFemaleSelected.value = false;
  }

  void selectFemale() {
    isMaleSelected.value = false;
    isFemaleSelected.value = true;
  }
}
