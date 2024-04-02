import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/assets_constant.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mesajlar",
          style: GoogleFonts.inriaSans(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Column(
            children: [
              const Divider(height: 1),
              AppBar(
                title: TextField(
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
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Iconify(
                      Zondicons.tuning,
                      color: Palette.usernameGrey,
                    ),
                  ),
                ],
              ),
              const Divider(height: 1),
            ],
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
            color: Palette.textGrey777,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 30,
            ),
            title: const Text(
              "Egemen Baha Barutçu",
            ),
            subtitle: Row(
              children: const [
                Text("1 Yeni Mesaj"),
                Text("• 2S"),
              ],
            ),
            trailing: const Icon(Icons.send),
          );
        },
      ),
    );
  }
}

class CustomMessageCard extends StatelessWidget {
  const CustomMessageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.red,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "berketurktr",
                      style: GoogleFonts.inter(color: Palette.textGrey9999, fontSize: 14),
                    ),
                    SvgPicture.asset(AssetsConstants.threeDotsOption),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BERKE TÜRK",
                      style: GoogleFonts.inter(fontSize: 18),
                    ),
                    const Text(" • "),
                    const Text("takip ediyorsun"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
