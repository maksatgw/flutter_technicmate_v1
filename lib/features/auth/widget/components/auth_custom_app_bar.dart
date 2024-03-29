import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/custom_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class AuthCustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const AuthCustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      flexibleSpace: SafeArea(
        child: Iconify(
          logo,
          size: 40,
        ),
      ),
      centerTitle: true,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Divider(height: 1),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
