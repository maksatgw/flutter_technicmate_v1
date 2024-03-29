import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';
import 'package:get/get.dart';

class RegisterSecond extends StatefulWidget {
  const RegisterSecond({super.key});

  @override
  State<RegisterSecond> createState() => _RegisterSecondState();
}

class _RegisterSecondState extends State<RegisterSecond> {
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
              mailSuffix: RegisterConstants.mailAlias,
              subTitle: RegisterConstants.mailAlias,
            ),
            const AuthCustomInputSection(upperTextFieldText: RegisterConstants.registerSecondInputFirst),
            AuthCustomButtonSection(
              upperButtonText: RegisterConstants.emptyStr,
              leftButtonText: RegisterConstants.getBackButtonText,
              rightButtonText: RegisterConstants.stepTwoButtonText,
              onPressedLeft: () {
                Get.back();
              },
              onPressedRight: () {
                Get.to(() => const RegisterThird(), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
