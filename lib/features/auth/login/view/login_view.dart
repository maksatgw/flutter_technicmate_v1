import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';
import 'package:flutter_technicmate_v1/features/auth/login/login.dart';
import 'package:flutter_technicmate_v1/theme/custom_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Iconify(
              hugeLogo,
              size: 200,
            ),
            const AuthCustomInputSection(upperTextFieldText: 'Öğrenci Mail Adresi'),
            AuthCustomButtonSection(
              upperButtonText: 'Hesabın yok mu?',
              leftButtonText: 'Oluştur',
              rightButtonText: 'Devam Et',
              onPressedLeft: () {
                Get.to(() => const RegisterView(), transition: Transition.downToUp);
              },
              onPressedRight: () {
                Get.to(() => const LoginPassword(), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
