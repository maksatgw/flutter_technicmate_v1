import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/message/controller/message_controller.dart';
import 'package:flutter_technicmate_v1/features/message/widget/message_widget.dart';
import 'package:get/get.dart';

class ChatScreenView extends StatefulWidget {
  const ChatScreenView({super.key});

  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  var controller = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomChatScreenAppBarTile(),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Obx(
              () => ListView.builder(
                controller: controller.listViewController,
                itemCount: controller.messages.length,
                itemBuilder: (context, index) {
                  if (controller.messages[index].image == null) {
                    return MessageCustomChatBubble(
                      controller: controller,
                      message: controller.messages[index],
                    );
                  } else {
                    return MessageCustomChatImage(
                      controller: controller,
                      message: controller.messages[index],
                    );
                  }
                },
              ),
            ),
          ),
          MessageCustomChatTextField(controller: controller)
        ],
      ),
    );
  }
}
