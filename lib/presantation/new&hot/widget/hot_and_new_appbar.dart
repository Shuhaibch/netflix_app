import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class HotAndNewAppBar extends StatelessWidget {
  const HotAndNewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Hot & New',
        style: TextStyle(
          fontSize: 30,
          // fontWeight: FontWeight.w900,
          fontFamily: GoogleFonts.rowdies().fontFamily,
        ),
      ),
      actions: [
        const Icon(
          Icons.cast,
          size: 30,
        ),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kwidth2,
      ],
      bottom: TabBar(
        isScrollable: true,
        unselectedLabelColor: kWhiteColor,
        labelColor: kBlackColor,
        labelStyle:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        indicator: BoxDecoration(
          color: kWhiteColor,
          borderRadius: kRadius30,
        ),
        tabs: const [
          Tab(
            text: '🍿 Coming Soon',
          ),
          Tab(
            text: "👀 Everyon's Wacthing",
          )
        ],
      ),
    );
  }
}