import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/message/model/message.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  var chatTextFieldcontroller = TextEditingController();
  var messages = <Message>[].obs;
  final ScrollController listViewController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    messages.value = [
      Message(
        image: "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/intel/thumb/1-1_large.jpg",
        id: '1',
        content: 'Merhaba',
        senderId: 'user1',
        timestamp: DateTime.now(),
      ),
      Message(
        image: null,
        id: '1',
        content: 'Merhaba',
        senderId: 'user1',
        timestamp: DateTime.now(),
      ),
      Message(
        image: "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/intel/thumb/1-1_large.jpg",
        id: '2',
        content: 'Nasılsınız?',
        senderId: 'user2',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      Message(
        image: null,
        id: '3',
        content: 'Berke bana mesajını tekrar iletir misin rica etsem?',
        senderId: 'user2',
        timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      ),
    ];
  }

  void sendMessage() {
    listViewController.jumpTo(
      listViewController.position.maxScrollExtent,
    );
    messages.add(
      Message(id: "5", content: chatTextFieldcontroller.text, senderId: "user1", timestamp: DateTime.now().subtract(const Duration(hours: 1)), image: null),
    );

    chatTextFieldcontroller.clear();
  }
}
