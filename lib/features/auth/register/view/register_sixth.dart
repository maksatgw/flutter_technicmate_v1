import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/common/navigation_bottom/view/bottom_navigation_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter_technicmate_v1/features/auth/auth.dart';
import 'package:flutter_technicmate_v1/features/auth/register/register.dart';


class RegisterSixth extends StatefulWidget {
  const RegisterSixth({Key? key}) : super(key: key);

  @override
  State<RegisterSixth> createState() => _RegisterSixthState();
}

class _RegisterSixthState extends State<RegisterSixth> {
  var controller = Get.put(RegisterSixthController());

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
            Obx(
              () {
                if (controller.switchIt.value == false) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Doğrulama Kodu",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            controller.switchToField();
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(controller.activeColor)),
                            child: Center(
                              child: Text(
                                "Kodu Al",
                                style: GoogleFonts.inter(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      // const AuthCustomInputSection(upperTextFieldText: "Kodu Girin"),
                      Countdown(
                        seconds: 120,
                        build: (BuildContext context, double time) => Text("${time.toInt()} saniye"),
                        interval: const Duration(milliseconds: 100),
                        onFinished: () {
                          controller.switchIt.value = false;
                        },
                      ),
                    ],
                  );
                }
              },
            ),
            AuthCustomButtonSection(
              upperButtonText: "",
              leftButtonText: "Geri Dön",
              rightButtonText: "İlerle 6/6",
              onPressedLeft: () {
                Get.back();
              },
              onPressedRight: () {
                Get.to(() => const BottomNavigationView(), transition: Transition.rightToLeft);
              },
            )
          ],
        ),
      ),
    );
  }
}
