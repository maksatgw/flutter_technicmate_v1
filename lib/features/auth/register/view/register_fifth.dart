import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/register/view/register_sixth.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:get/get.dart';

class RegisterFifth extends StatefulWidget {
  const RegisterFifth({Key? key}) : super(key: key);

  @override
  State<RegisterFifth> createState() => _RegisterFifthState();
}

class _RegisterFifthState extends State<RegisterFifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthCustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AuthCustomUserCard(
              avatarImage: "https://cdn.iconscout.com/icon/free/png-512/free-person-2653741-2202553.png?f=webp&w=256",
              mailAlias: "sezen.aksu",
              mailSuffix: "@deu.edu.tr",
              subTitle: "kayıt için doldur",
            ),
            // const AuthCustomInputSection(upperTextFieldText: "Şifre Belirle"),
            AuthCustomButtonSection(
              upperButtonText: "",
              leftButtonText: "Geri Dön",
              rightButtonText: "İlerle 5/6",
              onPressedLeft: () {
                Get.back();
              },
              onPressedRight: () {
                Get.to(() => const RegisterSixth(), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
