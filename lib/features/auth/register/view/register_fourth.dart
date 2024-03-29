import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';

class RegisterFourth extends StatefulWidget {
  const RegisterFourth({super.key});

  @override
  State<RegisterFourth> createState() => _RegisterFourthState();
}

class _RegisterFourthState extends State<RegisterFourth> {
  var controller = Get.put(RegisterFourthController());

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
            // const LoginInputSection(upperTextFieldText: "Doğum Tarihi", textFieldHintText: "Yazmak için tıkla..."),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bölüm",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      controller.showDialog(
                        CupertinoPicker(
                          itemExtent: 40.0,
                          onSelectedItemChanged: (index) {
                            controller.selectedValue.value = index;
                          },
                          children: List.generate(
                            controller.options.length,
                            (index) => Center(
                              child: Text(
                                controller.options[index],
                                style: const TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Obx(
                      () => Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(controller.activeColor),
                        ),
                        child: Center(
                          child: Text(
                            controller.options[controller.selectedValue.value],
                            style: GoogleFonts.inter(fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AuthCustomButtonSection(
              upperButtonText: "",
              leftButtonText: "Geri Dön",
              rightButtonText: "İlerle 4/6",
              onPressedLeft: () {
                Get.back();
              },
              onPressedRight: () {
                Get.to(() => const RegisterFifth(), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
