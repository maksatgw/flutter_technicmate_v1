import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/theme/palette.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Palette.white,
      elevation: 0,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Drawer item onTap handler
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Drawer item onTap handler
            },
          ),
        ],
      ),
    );
  }
}
