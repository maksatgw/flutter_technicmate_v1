
import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

class SearchCustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const SearchCustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 5, left: 5),
            label: Row(
              children: [
                const Iconify(
                  Zondicons.search,
                  color: Palette.textGrey777,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Search",
                    style: GoogleFonts.inriaSans(fontSize: 18),
                  ),
                ),
              ],
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: Palette.searchFieldFillColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Iconify(
            Zondicons.tuning,
            color: Palette.usernameGrey,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: const Divider(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
