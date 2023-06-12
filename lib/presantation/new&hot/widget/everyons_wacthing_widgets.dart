import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../home/widget/main_custom_button.dart';
import 'hot_new_image_widget.dart';

class EveryonsWacthingWidget extends StatelessWidget {
  const EveryonsWacthingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Demon Slayer",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight,
          Text(
            'Tanjiro and his sister Nezuko have been apprehended by the Demon Slayer Hashira, a group of extremely skilled swordfighters. ',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          kheight50,
          HotNewImageWidget(imageUrl: tNetflixEveryone),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MainCustomButton(
                icon: Icons.send,
                title: 'Share',
                iconSize: 30,
                textSize: 18,
              ),
              kwidth2,
              MainCustomButton(
                icon: CupertinoIcons.add,
                title: 'My List',
                iconSize: 30,
                textSize: 18,
              ),
              kwidth2,
              MainCustomButton(
                icon: CupertinoIcons.play,
                title: 'Play',
                iconSize: 30,
                textSize: 18,
              ),
              kwidth2
            ],
          )
        ],
      ),
    );
  }
}
