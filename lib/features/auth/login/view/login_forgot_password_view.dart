import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:flutter_technicmate_v1/features/auth/login/login.dart';
import 'package:get/get.dart';

class LoginForgotPassword extends StatefulWidget {
  const LoginForgotPassword({super.key});

  @override
  State<LoginForgotPassword> createState() => LoginForgotPasswordState();
}

class LoginForgotPasswordState extends State<LoginForgotPassword> {
  final String rightButtonText = 'Devam';

  final String upperTextFieldText = 'Yenileme Kodu';
  final String textFieldHintText = 'Yazmak için tıkla...';

  final String avatarImage = 'https://upload.wikimedia.org/wikipedia/tr/1/1b/Sezen_aksu_serce_album_kapak.jpg';
  final String mailAlias = 'Sezen Aksu';
  final String mailSuffix = '@deu.edu.tr';
  final String subTitle = 'Yenileme Kodunu Giriniz.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthCustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AuthCustomUserCard(
              avatarImage: avatarImage,
              mailAlias: mailAlias,
              mailSuffix: mailSuffix,
              subTitle: subTitle,
            ),
            AuthCustomInputSection(
              upperTextFieldText: upperTextFieldText,
            ),
            AuthCustomGlowButton(
              buttonText: rightButtonText,
              color: Palette.loginButtonBlueColor,
              glowColor: Palette.loginButtonBlueColor,
              onPressed: () {
                Get.to(() => const LoginChangePassword(), transition: Transition.rightToLeft);
              },
            ),
          ],
        ),
      ),
    );
  }
}
