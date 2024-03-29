import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/login/login.dart';
import 'package:get/get.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
              subTitle: RegisterConstants.registerFirstSubtitle,
            ),
            Column(
              children: const [
                AuthCustomInputSection(upperTextFieldText: RegisterConstants.registerFirstInputFirst),
                SizedBox(height: RegisterConstants.defaultSizedBoxHeight10),
                AuthCustomInputSection(upperTextFieldText: RegisterConstants.registerFirstInputSecond),
              ],
            ),
            AuthCustomButtonSection(
              upperButtonText: RegisterConstants.emptyStr,
              leftButtonText: RegisterConstants.getBackButtonText,
              rightButtonText: RegisterConstants.stepOneButtonText,
              onPressedLeft: () {
                Get.off(() => const LoginView(), transition: Transition.leftToRight);
              },
              onPressedRight: () {
                Get.to(() => const RegisterSecond(), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
