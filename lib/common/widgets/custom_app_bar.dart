import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final PreferredSizeWidget? bottom;

  const CustomAppBar({Key? key, this.title, this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      bottom: bottom ?? null,
      title: title ?? null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}
