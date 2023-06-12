// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/widgets/app_bar_widgets.dart';

class ScreenDownlods extends StatelessWidget {
  ScreenDownlods({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    const Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.fromLTRB(13, 25, 13, 10),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => const SizedBox(
            height: 30,
          ),
          itemCount: _widgetList.length,
        ));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidth,
        Text(
          'Smart Downloads',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List imageList = [
      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/7WCNaek6zGlhum99TA63QmVPhox.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg'
    ];

    return Column(
      children: [
        Text(
          'Indroducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: GoogleFonts.rubik().fontFamily,
            color: kWhiteColor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Text(
            textAlign: TextAlign.center,
            "We'll Download a personalised selection of\nMovies and shows for you, so there's\nalways somthing to watch on your\ndevice.",
            style: TextStyle(
              fontFamily: GoogleFonts.rubik().fontFamily,
              color: Colors.grey[350],
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width - 80,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                radius: (size.width * 0.4) - 15,
              ),
              DownloadsImageWidget(
                size: Size(
                  size.width * 0.4,
                  size.height * 0.25,
                ),
                imageList: imageList[0],
                margin: const EdgeInsets.only(
                  left: 130,
                  bottom: 50,
                ),
                angle: 20,
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(
                  right: 130,
                  bottom: 50,
                ),
                size: Size(
                  size.width * 0.4,
                  size.height * 0.25,
                ),
                angle: -20,
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(),
                size: Size(
                  size.width * 0.4,
                  size.height * 0.30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: MaterialButton(
              color: kButtonColorBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Set Up',
                  style: TextStyle(
                    fontFamily: GoogleFonts.rubik().fontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: kButtonColorWhite,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What you can download',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: kBlackColor,
                fontFamily: GoogleFonts.rubik().fontFamily,
              ),
            ),
          ),
        )
      ],
    );
  }
}
