import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/features/home/controller/home_controller.dart';
import 'package:flutter_technicmate_v1/features/home/model/post.dart';
import 'package:flutter_technicmate_v1/utils/custom_colors.dart';
import 'package:flutter_technicmate_v1/utils/custom_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(HomeController());

  List<Post> postList = [];

  @override
  void initState() {
    postList = [
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
        postText: "Just enjoying the day!",
        image: null,
      ),
      Post(
        name: "Alice Johnson",
        username: "@alice",
        date: "March 10, 2024",
        postText: "Hello world!",
        image: null, // No image for this post
      ),
    ];
    super.initState();
  }

  //Instance yaratmak için kullanılan GetX türü
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PostCard2(
      //   posts: postList[1],
      // ),
      body: ListView.separated(
        itemCount: postList.length,
        separatorBuilder: (context, index) => Divider(
          color: seperatorGrey,
        ),
        addRepaintBoundaries: false,
        itemBuilder: (context, index) => PostCard2(posts: postList[index]),
      ),
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
                  radius: 28,
                  backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1653157500986744832/wu0ArmY8_400x400.jpg'),
                ),
              ],
            ),
            //2. Column
            Expanded(
              child: Container(
                // color: Colors.green,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Username
                    Container(
                      // color: Colors.blue,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recep Tayyip Erdoğan",
                                style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "@receptayyip",
                                style: GoogleFonts.inter(fontSize: 12, color: usernameGrey),
                              ),
                            ],
                          ),
                          SvgPicture.string(
                            threedots,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
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
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  PostCard({
    Key? key,
    required this.posts,
  }) : super(key: key);

  Post posts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Column(
            children: const [
              CircleAvatar(),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Text(
                        "${posts.username}",
                        style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Text(
                        "@receptayyip",
                        style: GoogleFonts.inter(fontSize: 12, color: usernameGrey),
                      ),
                      const Spacer(),
                      SvgPicture.string(
                        threedots,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Şu soruya cevap bulamadım. Yardımcı olur musunuz? Amklar?",
                  style: GoogleFonts.cabin(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
