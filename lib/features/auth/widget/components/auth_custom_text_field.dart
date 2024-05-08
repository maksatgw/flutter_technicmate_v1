import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthCustomTextField extends StatelessWidget {
  const AuthCustomTextField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
          filled: true,
          fillColor: Palette.authTextFieldFillColor,
          hintText: "Yazmak için tıkla...",
          hintStyle: GoogleFonts.inter(fontSize: 13),
        ),
      ),
    );
  }
}
