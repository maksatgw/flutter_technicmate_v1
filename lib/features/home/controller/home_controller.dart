import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/home/model/post.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  var count = 0.obs;
  var postList = <Post>[].obs;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    postList.value = [
      Post(
        name: "John Doe",
        username: "@johndoe",
        date: "March 12, 2024",
        postText:
            "Başı rahmet, ortası mağfiret, sonu cehennem ateşinden kurtuluş olan Ramazan ayının İslam âlemi ve milletimiz için hayırlara vesile olmasını diliyorum. Ramazan-ı Şerif’imiz mübarek olsun.",
        image: "https://pbs.twimg.com/media/GH_8phlWAAAiQls?format=jpg&name=4096x4096",
      ),
      Post(
        name: "Jane Smith",
        username: "@janesmith",
        date: "March 11, 2024",
        postText: null,
        image: "https://pbs.twimg.com/media/GH_8phlWAAAiQls?format=jpg&name=4096x4096",
      ),
      Post(
        name: "Alice Johnson",
        username: "@alice",
        date: "March 10, 2024",
        postText: "Hello world!",
        image: null,
      ),
    ];
  }
}
