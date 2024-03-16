import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/home/view/home_view.dart';
import 'package:flutter_technicmate_v1/features/tabs/view/tabbars_view.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          drawerTheme: const DrawerThemeData(
            backgroundColor: Colors.black,
          ),
          tabBarTheme: const TabBarTheme(),
        ),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const TabBarsView(),
      ),
    );
