import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/home/view/home_view.dart';
import 'package:flutter_technicmate_v1/features/notification/view/notification_view.dart';
import 'package:flutter_technicmate_v1/features/search/view/search_view.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var page = 0.obs;

  void onPageChange(int index) {
    page.value = index;
  }

  List<Widget> bottomTabBarPages = [
    const Home(),
    const SearchView(),
    const NotificationView(),
    const NotificationView(),
    const SearchView(),
  ];
}
