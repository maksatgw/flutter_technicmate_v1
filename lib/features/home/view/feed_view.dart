import 'package:flutter/material.dart';
import 'package:flutter_technicmate_v1/features/home/model/post.dart';
import 'package:flutter_technicmate_v1/features/home/widget/home_widget.dart';
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
      physics: const BouncingScrollPhysics(),
      itemCount: postList.length,
      separatorBuilder: (context, index) => const Divider(
        color: Palette.seperatorGrey,
      ),
      addRepaintBoundaries: false,
      itemBuilder: (context, index) => PostCard2(
        posts: postList[index],
      ),
    );
  }
}
