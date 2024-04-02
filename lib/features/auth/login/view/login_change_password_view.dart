import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/common/navigation_bottom/view/bottom_navigation_view.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:get/get.dart';

class LoginChangePassword extends StatefulWidget {
  const LoginChangePassword({super.key});

  @override
  State<LoginChangePassword> createState() => _LoginChangePasswordState();
}

class _LoginChangePasswordState extends State<LoginChangePassword> {
  final String rightButtonText = 'Tamamla';

  final String upperTextFieldText = 'Yeni Şifre';
  final String textFieldHintText = 'Yazmak için tıkla...';

  final String avatarImage = 'https://upload.wikimedia.org/wikipedia/tr/1/1b/Sezen_aksu_serce_album_kapak.jpg';
  final String mailAlias = 'Sezen Aksu';
  final String mailSuffix = '@deu.edu.tr';
  final String subTitle = 'Yeni Şifre Belirleyin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthCustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AuthCustomUserCard(avatarImage: avatarImage, mailAlias: mailAlias, mailSuffix: mailSuffix, subTitle: subTitle),
            AuthCustomInputSection(upperTextFieldText: upperTextFieldText),
            AuthCustomGlowButton(
              buttonText: rightButtonText,
              color: Palette.loginButtonBlueColor,
              glowColor: Palette.loginButtonBlueColor,
              onPressed: () {
                Get.to(
                  const BottomNavigationView(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
