import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthCustomUserCard extends StatelessWidget {
  const AuthCustomUserCard({
    Key? key,
    required this.avatarImage,
    required this.mailAlias,
    required this.mailSuffix,
    required this.subTitle,
  }) : super(key: key);

  final String avatarImage;
  final String mailAlias;
  final String mailSuffix;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 78,
          backgroundImage: NetworkImage(avatarImage),
          backgroundColor: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mailAlias,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              mailSuffix,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color(0xFF005493),
              ),
            ),
          ],
        ),
        Text(
          subTitle,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w100,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
