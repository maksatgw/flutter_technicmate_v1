import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/home/controller/home_controller.dart';
import 'package:flutter_technicmate_v1/features/home/view/feed_view.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final controller = Get.put(HomeController());
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  backgroundColor: Palette.chatBlueButtonColor,
                  radius: 40,
                ),
                UserProfileCustomStatic(count: 15, title: "Not"),
                UserProfileCustomStatic(count: 8121, title: "Takipçi"),
                UserProfileCustomStatic(count: 125, title: "Takip"),
              ],
            ),
            const SizedBox(height: 10),
            Text("Egemen Baha BARUTÇU", style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold, color: Palette.white)),
            const SizedBox(height: 10),
            const UserProfileCustomClassNumberIndicator(),
            const SizedBox(height: 10),
            Text(
              "Here to change.",
              style: GoogleFonts.inter(color: Palette.textGrey9999),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 35),
                ),
                child: Text("Takip Et", style: GoogleFonts.inter(fontSize: 16, color: Palette.white)),
              ),
            ),
            const SizedBox(height: 5),
            TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  child: Text("Paylaşımlar"),
                ),
                Tab(
                  child: Text("Etkinliker"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  FeedPageBody(postList: controller.postList),
                  FeedPageBody(postList: controller.postList),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserProfileCustomClassNumberIndicator extends StatelessWidget {
  const UserProfileCustomClassNumberIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 5,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Palette.loginButtonBlueColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text.rich(
              TextSpan(
                text: 'Fizik ',
                style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                children: <InlineSpan>[
                  TextSpan(
                    text: '1/4',
                    style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold, color: Palette.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        SvgPicture.asset(AssetsConstants.uniCap)
      ],
    );
  }
}

class UserProfileCustomStatic extends StatelessWidget {
  UserProfileCustomStatic({
    Key? key,
    required this.count,
    required this.title,
  }) : super(key: key);
  final int count;
  final String title;
  final formatter = NumberFormat('#,##,000');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(formatter.format(count), style: GoogleFonts.inter(fontSize: 15, color: Palette.white)),
        Text(title, style: GoogleFonts.inter(fontSize: 15, color: Palette.white)),
      ],
    );
  }
}
