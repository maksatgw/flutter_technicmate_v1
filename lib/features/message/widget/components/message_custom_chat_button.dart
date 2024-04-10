import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';

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
        padding: const EdgeInsets.all(20),
        backgroundColor: backgroundColor,
      ),
      child: icon,
    );
  }
}
