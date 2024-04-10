import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/message/controller/message_controller.dart';
import 'package:flutter_technicmate_v1/features/message/widget/components/message_custom_chat_button.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';

class MessageCustomChatTextField extends StatelessWidget {
  const MessageCustomChatTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final MessageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller.chatTextFieldcontroller,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(20),
          hintText: "teest",
          filled: true,
          fillColor: Palette.chatTextFieldBg,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MessageCustomChatScreenTextFieldButton(
                onPressed: () {
                  controller.sendMessage();
                },
                icon: const Icon(
                  Icons.insert_photo,
                  color: Palette.white,
                ),
                backgroundColor: Palette.chatBlueButtonColor,
              ),
              MessageCustomChatScreenTextFieldButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.note_add,
                  color: Palette.white,
                ),
                backgroundColor: Palette.chatDarkBlueButtonColor,
              ),
            ],
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.send,
              color: Palette.white,
            ),
          ),
        ),
      ),
    );
  }
}
