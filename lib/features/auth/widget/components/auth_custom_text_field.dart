import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthCustomTextField extends StatelessWidget {
  const AuthCustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
          filled: true,
          fillColor: const Color(0xFF00182B),
          hintText: "Yazmak için tıkla...",
          hintStyle: GoogleFonts.inter(fontSize: 13),
        ),
      ),
    );
  }
}
