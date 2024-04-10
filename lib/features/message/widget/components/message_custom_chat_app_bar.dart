import 'package:flutter/material.dart';

class CustomChatScreenAppBarTile extends StatelessWidget {
  const CustomChatScreenAppBarTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      title: const Text(
        "Egemen Baha Barutçu",
        overflow: TextOverflow.fade,
      ),
      subtitle: Wrap(
        children: const [
          Text("Online"),
        ],
      ),
      trailing: const Icon(Icons.tune),
    );
  }
}
