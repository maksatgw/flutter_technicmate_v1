import 'package:flutter/material.dart';

class MessageCustomChatScreenTextFieldButton extends StatelessWidget {
  const MessageCustomChatScreenTextFieldButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
  }) : super(key: key);

  final Icon icon;
  final Function() onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        backgroundColor: backgroundColor,
      ),
      child: icon,
    );
  }
}
