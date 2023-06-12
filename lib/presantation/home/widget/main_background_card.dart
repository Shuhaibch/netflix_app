// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import 'main_custom_button.dart';

class MainBackgroundCard extends StatelessWidget {
  const MainBackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),
              image: NetworkImage(
                kMainbgimage,
              ),
            ),
          ),
        ),
        Main_Button_Row(),
      ],
    );
  }

  Positioned Main_Button_Row() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const MainCustomButton(icon: Icons.add, title: 'My List'),
            _mainPlayButton(),
            const MainCustomButton(icon: Icons.info, title: 'Info')
          ],
        ),
      ),
    );
  }

  TextButton _mainPlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 25,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
              color: kBlackColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
