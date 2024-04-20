import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/palette.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      labelStyle: GoogleFonts.cabin(fontSize: 20), // color for text
      unselectedLabelStyle: GoogleFonts.cabin(fontSize: 20),
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Palette.white),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
    ),
  );
}
