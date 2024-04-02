import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/home/controller/home_controller.dart';
import 'package:flutter_technicmate_v1/features/home/view/feed_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: SvgPicture.asset(
                AssetsConstants.technicMateLogo,
                height: 40,
                width: 40,
              ),
            );
          },
        ),
        actions: const [
          CircleAvatar(
            radius: 19,
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Adolf_Hitler_cropped_2.jpg/800px-Adolf_Hitler_cropped_2.jpg'),
          ),
          SizedBox(
            width: 10,
          )
        ],
        bottom: TabBar(
          controller: controller.tabController,
          tabs: [
            Tab(
              child: Text(
                "Paylaşımlar",
                style: GoogleFonts.cabin(fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                "Etkinlikler",
                style: GoogleFonts.cabin(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          FeedPageBody(postList: controller.postList),
          FeedPageBody(postList: controller.postList),
        ],
      ),
    );
  }
}
