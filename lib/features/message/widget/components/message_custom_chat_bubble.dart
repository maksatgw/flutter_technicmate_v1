import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/message/controller/message_controller.dart';
import 'package:flutter_technicmate_v1/features/message/model/message.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';

class MessageCustomChatBubble extends StatelessWidget {
  const MessageCustomChatBubble({
    Key? key,
    required this.controller,
    required this.message,
  }) : super(key: key);

  final MessageController controller;
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.senderId == "user2" ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Palette.chatBubbleDarkBlueColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text("${message.content}"),
      ),
    );
  }
}
