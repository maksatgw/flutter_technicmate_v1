import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bildirimler",
          style: GoogleFonts.inriaSans(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Iconify(
              Zondicons.tuning,
              color: Palette.textGreyA1A1A1,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
    );
  }
}
