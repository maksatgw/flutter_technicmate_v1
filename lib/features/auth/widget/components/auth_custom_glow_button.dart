import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthCustomGlowButton extends StatelessWidget {
  const AuthCustomGlowButton({super.key, required this.buttonText, required this.color, required this.glowColor, required this.onPressed});
  final String buttonText;
  final Color color;
  final Color glowColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GlowButton(
      color: color,
      glowColor: glowColor,
      borderRadius: BorderRadius.circular(16),
      width: 110,
      height: 34,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: GoogleFonts.inter(fontSize: 14),
      ),
    );
  }
}
