import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_technicmate_v1/common/navigation_bottom/controller/bottom_navigation_controller.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/tmpost/view/tmpost_create_view.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:get/get.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  var controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.page.value,
          children: controller.bottomTabBarPages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => CupertinoTabBar(
          currentIndex: controller.page.value,
          onTap: (index) {
            if (index != 2) {
              controller.onPageChange(index);
            } else {
              Get.to(() => const TMPostCreateView());
            }
          },
          backgroundColor: Palette.transparent,
          height: 80,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                controller.page.value == 0 ? AssetsConstants.bottomNavHomeActive : AssetsConstants.bottomNavHomePassive,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                controller.page.value == 1 ? AssetsConstants.bottomNavSearchActive : AssetsConstants.bottomNavSearchPassive,
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 66,
                width: 66,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(padding: const EdgeInsets.all(20.0), child: SvgPicture.asset(AssetsConstants.bottomNavBarCenterAdd)),
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                controller.page.value == 3 ? AssetsConstants.bottomNavNotificationActive : AssetsConstants.bottomNavNotificationPassive,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                controller.page.value == 4 ? AssetsConstants.bottomNavMessageActive : AssetsConstants.bottomNavMessagePassive,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
