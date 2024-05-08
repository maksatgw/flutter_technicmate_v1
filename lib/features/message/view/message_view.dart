import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/common/widgets/custom_app_bar.dart';
import 'package:flutter_technicmate_v1/constants/assets_constant.dart';
import 'package:flutter_technicmate_v1/features/message/view/chat_screen_view.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:get/get.dart';
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
      appBar: CustomAppBar(
        title: SizedBox(
          height: 40,
          child: TextField(
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none),
              filled: true,
              fillColor: Palette.authTextFieldFillColor,
              hintText: "Ara",
              hintStyle: GoogleFonts.inter(fontSize: 14),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(() => ChatScreenView());
            },
            leading: const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1622557245950107648/jq2sqW7i_400x400.jpg',
              ),
            ),
            title: Text(
              "Egemen Baha Barutcu",
              style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w300),
            ),
            subtitle: Wrap(
              spacing: 5,
              children: [
                Text(
                  "Teşekkürler",
                  style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                Text(
                  "• Şimdi",
                  style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            trailing: SvgPicture.asset(
              AssetsConstants.messageSend,
              height: 20,
              width: 20,
            ),
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
