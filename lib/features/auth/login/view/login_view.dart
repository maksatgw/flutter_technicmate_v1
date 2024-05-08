import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/login/model/login_model.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';
import 'package:flutter_technicmate_v1/features/auth/login/login.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              AssetsConstants.technicMateLogo,
              height: 200,
            ),
            AuthCustomInputSection(
              upperTextFieldText: 'Öğrenci Mail Adresi',
              textEditingController: textEditingController,
            ),
            AuthCustomButtonSection(
              upperButtonText: 'Hesabın yok mu?',
              leftButtonText: 'Oluştur',
              rightButtonText: 'Devam Et',
              onPressedLeft: () {
                Get.to(() => const RegisterView(), transition: Transition.downToUp);
              },
              onPressedRight: () {
                // print();
                Get.to(() => LoginPassword(signIn: SignIn(mail: textEditingController.text)), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
