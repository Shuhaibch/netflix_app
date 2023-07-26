import 'package:netflix_app/core/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //my list
        TextButton.icon(
          onPressed: () {},
          icon: Column(
            children: [
              const Icon(
                CupertinoIcons.add,
                color: kWhiteColor,
                size: 40,
              ),
              Text(
                'My List',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          label: const Text(
            '', //'Label',
            style: TextStyle(
              color: kWhiteColor,
            ),
          ),
        ),
        // rate
        TextButton.icon(
          onPressed: () {},
          icon: Column(
            children: [
              const Icon(
                Icons.thumb_up_off_alt,
                color: kWhiteColor,
                size: 40,
              ),
              Text(
                'Rate',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          label: const Text(
            '', //'Label',
            style: TextStyle(
              color: kWhiteColor,
            ),
          ),
        ),
        //share
        TextButton.icon(
          onPressed: () {},
          icon: Column(
            children: [
              const Icon(
                Icons.share,
                color: kWhiteColor,
                size: 40,
              ),
              Text(
                'Share',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          label: Text(
            '', //'Label',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ),
      ],
    );
  }
}
