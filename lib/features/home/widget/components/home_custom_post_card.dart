import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/constants.dart';
import 'package:flutter_technicmate_v1/features/home/model/post.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCard2 extends StatelessWidget {
  const PostCard2({super.key, required this.posts});
  final Post posts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/1622557245950107648/jq2sqW7i_400x400.jpg',
            ),
          ),
          const SizedBox(width: 10), // Boşluk ekledim
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Text(
                              "${posts.name}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 5), // Boşluk ekledim
                          Flexible(
                            flex: 1,
                            child: Text(
                              "${posts.username}",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Palette.usernameGrey,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5), // Boşluk ekledim
                          Flexible(
                            child: Text(
                              "-5Dk",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Palette.usernameGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      AssetsConstants.threeDotsOption,
                    ),
                  ],
                ),
                const SizedBox(height: 5), // Boşluk ekledim

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
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// if (posts.postText != null) ...[
//   Text(
//     "${posts.postText}",
//     style: GoogleFonts.cabin(fontSize: 16),
//     textAlign: TextAlign.start,
//   ),
// ],
// if (posts.image != null) ...[
//   const SizedBox(height: 10),
//   Center(
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(8.0),
//       child: Image.network(
//         posts.image.toString(),
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// ]

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
