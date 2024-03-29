import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/widget/components/auth_custom_glow_button.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthCustomButtonSection extends StatelessWidget {
  const AuthCustomButtonSection({
    Key? key,
    required this.upperButtonText,
    required this.leftButtonText,
    required this.rightButtonText,
    required this.onPressedLeft,
    required this.onPressedRight,
  }) : super(key: key);

  final String upperButtonText;
  final String leftButtonText;
  final String rightButtonText;

  final Function() onPressedLeft;
  final Function() onPressedRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              upperButtonText,
              style: GoogleFonts.inter(fontSize: 13),
            ),
            const SizedBox(height: 4),
            AuthCustomGlowButton(
              buttonText: leftButtonText,
              glowColor: Palette.transparent,
              color: Palette.loginButtonDarkBlueColor,
              onPressed: onPressedLeft,
            )
          ],
        ),
        const SizedBox(width: 5),
        Padding(
          padding: const EdgeInsets.only(top: 21),
          child: AuthCustomGlowButton(
            buttonText: rightButtonText,
            glowColor: Palette.loginButtonBlueColor,
            color: Palette.loginButtonBlueColor,
            onPressed: onPressedRight,
          ),
        ),
      ],
    );
  }
}
