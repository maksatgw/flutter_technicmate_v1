import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/message/controller/message_controller.dart';
import 'package:flutter_technicmate_v1/features/message/model/message.dart';

class MessageCustomChatImage extends StatelessWidget {
  const MessageCustomChatImage({
    Key? key,
    required this.controller,
    required this.message,
  }) : super(key: key);

  final MessageController controller;
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      widthFactor: 25,
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            "${message.image}",
            fit: BoxFit.cover,
            width: 175,
            height: 250,
          ),
        ),
      ),
    );
  }
}
