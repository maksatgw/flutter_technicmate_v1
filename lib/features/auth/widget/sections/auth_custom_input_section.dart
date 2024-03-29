import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/auth/widget/components/auth_custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthCustomInputSection extends StatelessWidget {
  const AuthCustomInputSection({
    Key? key,
    required this.upperTextFieldText,
  }) : super(key: key);

  final String upperTextFieldText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            upperTextFieldText,
            style: GoogleFonts.inter(
              fontSize: 16,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          const AuthCustomTextField(),
        ],
      ),
    );
  }
}

