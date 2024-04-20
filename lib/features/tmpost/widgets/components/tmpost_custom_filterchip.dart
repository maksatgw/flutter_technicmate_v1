import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TMPostCustomFilterChip extends StatelessWidget {
  const TMPostCustomFilterChip({
    Key? key,
    required this.selectedValue,
    required this.index,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final RxInt selectedValue;
  final int index;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => FilterChip(
        backgroundColor: selectedValue.value == index ? Colors.white : Colors.grey,
        label: Wrap(
          spacing: 5,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            if (icon != "") ...{
              SvgPicture.asset(icon),
            }
          ],
        ),
        onSelected: (value) {
          selectedValue.value = index;
          print(selectedValue.value);
        },
      ),
    );
  }
}
