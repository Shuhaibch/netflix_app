// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix_app/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          kwidth,
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              // fontWeight: FontWeight.w900,
              fontFamily: GoogleFonts.rowdies().fontFamily,
            ),
          ),
          const Spacer(),
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
          kwidth,
        ],
      ),
    );
  }
}
