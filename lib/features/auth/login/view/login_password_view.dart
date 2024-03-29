import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/login/login.dart';
import 'package:flutter_technicmate_v1/common/tabs/view/tabbars_view.dart';
import 'package:get/get.dart';

class LoginPassword extends StatefulWidget {
  const LoginPassword({super.key});

  @override
  State<LoginPassword> createState() => _LoginPasswordState();
}

class _LoginPasswordState extends State<LoginPassword> {
  final String upperButtonText = 'Şifreni mi Unuttun?';
  final String leftButtonText = 'Yenile';
  final String rightButtonText = 'Giriş';

  final String upperTextFieldText = 'Şifre';
  final String textFieldHintText = 'Yazmak için tıkla';
  final String avatarImage = 'https://upload.wikimedia.org/wikipedia/tr/1/1b/Sezen_aksu_serce_album_kapak.jpg';
  final String mailAlias = 'Sezen Aksu';
  final String mailSuffix = '@deu.edu.tr';
  final String subTitle = 'Yeniden hoş geldin!';

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
            AuthCustomButtonSection(
              upperButtonText: upperButtonText,
              leftButtonText: leftButtonText,
              rightButtonText: rightButtonText,
              onPressedRight: () {
                Get.to(() => const TabBarsView(), transition: Transition.rightToLeft);
              },
              onPressedLeft: () {
                Get.to(() => const LoginForgotPassword(), transition: Transition.leftToRight);
              },
            ),
          ],
        ),
      ),
    );
  }
}
