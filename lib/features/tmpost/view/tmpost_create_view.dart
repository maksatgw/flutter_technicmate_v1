import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/message/widget/message_widget.dart';
import 'package:flutter_technicmate_v1/features/tmpost/widgets/tmpost_widget.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:get/get.dart';

class TMPostCreateView extends StatefulWidget {
  const TMPostCreateView({super.key});

  @override
  State<TMPostCreateView> createState() => TMPostCreateViewState();
}

class TMPostCreateViewState extends State<TMPostCreateView> {
  RxBool isSelected = false.obs;
  final RxInt selectedValue = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Palette.chatBlueButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.add,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                spacing: 5,
                children: [
                  TMPostCustomFilterChip(selectedValue: selectedValue, index: 1, title: "Soru", icon: AssetsConstants.iconQuestion),
                  TMPostCustomFilterChip(selectedValue: selectedValue, index: 2, title: "Bilgi", icon: AssetsConstants.iconInfo),
                  TMPostCustomFilterChip(selectedValue: selectedValue, index: 3, title: "Hiçbiri", icon: ""),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TextField(
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  hintText: "Technicmate için bir post paylaş!",
                  hintStyle: const TextStyle(color: Palette.textGrey777),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Palette.chatTextFieldBg,
                ),
                maxLines: null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    children: [
                      const Icon(Icons.close, size: 25),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Image.network(
                          "https://pbs.twimg.com/media/GK4RjHpXwAAeMfx?format=jpg&name=large",
                          fit: BoxFit.cover,
                          width: 33,
                          height: 35,
                        ),
                      ),
                      const Text("+12"),
                    ],
                  ),
                  Row(
                    children: [
                      MessageCustomChatScreenTextFieldButton(
                        onPressed: () {},
                        backgroundColor: Palette.chatDarkBlueButtonColor,
                        icon: const Icon(Icons.insert_photo),
                      ),
                      MessageCustomChatScreenTextFieldButton(
                        onPressed: () {},
                        backgroundColor: Palette.chatDarkBlueButtonColor,
                        icon: const Icon(Icons.note_add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
