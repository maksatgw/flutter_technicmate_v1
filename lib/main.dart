import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/common/navigation_bottom/view/bottom_navigation_view.dart';
import 'package:flutter_technicmate_v1/features/user_profile/view/user_profile.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
    GetMaterialApp(
      darkTheme: AppTheme.theme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const UserProfileView(),
    ),
  );
}
