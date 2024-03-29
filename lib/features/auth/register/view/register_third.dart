import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class RegisterThird extends StatefulWidget {
  const RegisterThird({super.key});

  @override
  State<RegisterThird> createState() => _RegisterThirdState();
}

class _RegisterThirdState extends State<RegisterThird> {
  var controller = Get.put(RegisterThirdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthCustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AuthCustomUserCard(
              avatarImage: RegisterConstants.avatarImage,
              mailAlias: RegisterConstants.mailAlias,
              mailSuffix: RegisterConstants.mailSuffix,
              subTitle: RegisterConstants.registerThirdSubtitle,
            ),
            CustomRegisterThirdContainerSection(controller: controller),
            AuthCustomButtonSection(
              upperButtonText: RegisterConstants.emptyStr,
              leftButtonText: RegisterConstants.getBackButtonText,
              rightButtonText: RegisterConstants.stepThreeButtonText,
              onPressedLeft: () {
                Get.back();
              },
              onPressedRight: () {
                if (controller.isFemaleSelected.value == false && controller.isMaleSelected.value == false) {
                  Get.snackbar(
                    RegisterConstants.registerSnackbarError,
                    RegisterConstants.registerSnackBarMessage,
                    snackPosition: SnackPosition.BOTTOM,
                    duration: const Duration(seconds: 3),
                    backgroundColor: Palette.loginButtonBlueColor,
                    colorText: Colors.white,
                    borderRadius: 10.0,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeInBack,
                    isDismissible: true,
                    onTap: (_) {},
                  );
                } else {
                  Get.to(() => const RegisterFourth(), transition: Transition.rightToLeft);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomRegisterThirdContainerSection extends StatelessWidget {
  const CustomRegisterThirdContainerSection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final RegisterThirdController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            RegisterConstants.registerThirdInputFirst,
            style: GoogleFonts.inter(
              fontSize: 16,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              controller.selectMale();
            },
            child: Obx(
              () => Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: controller.isMaleSelected.value ? Color(controller.activeColor) : Color(controller.passiveColor),
                ),
                child: Center(
                  child: Text(
                    RegisterConstants.registerThirdInputSecond,
                    style: GoogleFonts.inter(fontSize: 13),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              controller.selectFemale();
            },
            child: Obx(
              () => Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: controller.isFemaleSelected.value ? Color(controller.activeColor) : Color(controller.passiveColor),
                ),
                child: Center(
                  child: Text(
                    RegisterConstants.registerThirdInputThird,
                    style: GoogleFonts.inter(fontSize: 13),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
