import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_technicmate_v1/constants/assets_constant.dart';
import 'package:flutter_technicmate_v1/features/search/widgets/search_custom_app_bar.dart';
import 'package:flutter_technicmate_v1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchCustomAppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.red,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "berketurktr",
                            style: GoogleFonts.inter(color: Palette.textGrey9999, fontSize: 14),
                          ),
                          SvgPicture.asset(AssetsConstants.threeDotsOption),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BERKE TÜRK",
                            style: GoogleFonts.inter(fontSize: 18),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " • ",
                                  style: GoogleFonts.inter(color: Palette.textGrey9999, fontSize: 12),
                                ),
                                TextSpan(
                                  text: "takip ediyorsun",
                                  style: GoogleFonts.inter(color: Palette.textGrey9999, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
