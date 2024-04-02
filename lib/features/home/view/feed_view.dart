import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/home/model/post.dart';
import 'package:flutter_technicmate_v1/features/home/view/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme.dart';

class FeedPageBody extends StatelessWidget {
  const FeedPageBody({
    Key? key,
    required this.postList,
  }) : super(key: key);

  final List<Post> postList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: postList.length,
      separatorBuilder: (context, index) => const Divider(
        color: Palette.seperatorGrey,
      ),
      addRepaintBoundaries: false,
      itemBuilder: (context, index) => PostCard2(posts: postList[index]),
    );
  }
}

class PostCard2 extends StatelessWidget {
  const PostCard2({super.key, required this.posts});

  final Post posts;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        // color: Colors.red,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Avatar Column
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: const [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1653157500986744832/wu0ArmY8_400x400.jpg'),
                ),
              ],
            ),
            //2. Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Username
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${posts.name}",
                            style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "${posts.username}",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(fontSize: 12, color: Palette.usernameGrey),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "-5Dk",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(fontSize: 12, color: Palette.usernameGrey),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        AssetsConstants.threeDotsOption,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${posts.postText}",
                    style: GoogleFonts.cabin(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                  if (posts.image != null) ...[
                    const SizedBox(height: 10),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          posts.image.toString(),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
