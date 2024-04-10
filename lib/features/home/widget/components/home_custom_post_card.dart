import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/home/model/post.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.posts});
  final Post posts;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1622557245950107648/jq2sqW7i_400x400.jpg'),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
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
          if (posts.postText != null) ...[
            Text(
              "${posts.postText}",
              style: GoogleFonts.cabin(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ],
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
          ]
        ],
      ),
      trailing: SvgPicture.asset(
        AssetsConstants.threeDotsOption,
      ),
    );
  }
}
