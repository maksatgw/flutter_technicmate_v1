import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/register/controller/register_fourth_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterCustomButtonLikeContainer extends StatelessWidget {
  const RegisterCustomButtonLikeContainer({
    Key? key,
    required this.controller,
    required this.color,
  }) : super(key: key);

  final RegisterFourthController controller;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
      child: Center(
        child: Text(
          controller.options[controller.selectedValue.value],
          style: GoogleFonts.inter(fontSize: 13),
        ),
      ),
    );
  }
}
