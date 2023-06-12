import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/constants.dart';
import '../../home/widget/main_custom_button.dart';
import 'hot_new_image_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: date_widget(),
        ),
        SizedBox(
          width: size.width - 60,
          height: 500,
          child: Column(
            children: [
              const HotNewImageWidget(imageUrl: tNetflixComing),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Black Panther:\nWakanda Forever',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: GoogleFonts.dancingScript().fontFamily,
                        letterSpacing: -2,
                      ),
                    ),
                    // const Spacer(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          MainCustomButton(
                            icon: CupertinoIcons.bell,
                            title: 'Remind Me',
                            iconSize: 25,
                            textSize: 13,
                          ),
                          kwidth2,
                          MainCustomButton(
                            icon: CupertinoIcons.info,
                            title: 'Info',
                            iconSize: 25,
                            textSize: 15,
                          ),
                          kheight,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kheight,
              const Row(
                children: [
                  Text('Coming on Friday'),
                ],
              ),
              kheight,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(
                      tNetflixSeries,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    "Black Panther: Wakanda Forever",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  kheight,
                  const Text(
                    'Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox date_widget() {
    return SizedBox(
      width: 50,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'FEB',
            style: TextStyle(
                fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                fontSize: 26,
                color: Colors.white60),
          ),
          Text(
            '11',
            style: TextStyle(
              fontFamily: GoogleFonts.anton().fontFamily,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              letterSpacing: 10,
            ),
          )
        ],
      ),
    );
  }
}
