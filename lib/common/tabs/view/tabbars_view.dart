import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/home/view/home_view.dart';
import 'package:flutter_technicmate_v1/theme/custom_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_technicmate_v1/common/drawer/view/custom_drawer.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class TabBarsView extends StatefulWidget {
  const TabBarsView({super.key});

  @override
  State<TabBarsView> createState() => _TabBarsViewState();
}

class _TabBarsViewState extends State<TabBarsView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
              icon: Iconify(
                logo,
                size: 100,
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
          controller: _tabController,
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
      drawer: const CustomDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          Home(),
          Home(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 88,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Iconify(
              bottomNavBar1,
            ),
            Iconify(
              bottomNavBar3,
            ),
            Container(
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Iconify(
                  bottomNavBarCenter,
                ),
              ),
            ),
            Iconify(
              bottomNavBarNotif,
            ),
            Iconify(
              bottomNavBarMessage,
            ),
          ],
        ),
      ),
    );
  }
}
