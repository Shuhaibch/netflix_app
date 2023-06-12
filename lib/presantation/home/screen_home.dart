// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/home/widget/main_background_card.dart';

import 'package:netflix_app/presantation/home/widget/number_card_tile.dart';

import '../widgets/main_card_tile.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: ListView(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: MainBackgroundCard(),
                      ),
                      MainCardTile(title: 'Released in the past year'),
                      MainCardTile(title: 'Trending Now'),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: NumberCardTile(
                            title: 'Top 10 TV Shows In India Today'),
                      ),
                      MainCardTile(title: 'Tense Dramas'),
                      MainCardTile(title: 'South Indian Cinema'),
                    ],
                  ),
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 80,
                        color: Colors.black.withOpacity(.2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Image(
                                    image: AssetImage(kNetflixImage),
                                    height: 40,
                                    width: 50,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    size: 30,
                                  ),
                                  kwidth3,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  kwidth,
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: kMaincard3Btn,
                                    ),
                                    Text(
                                      'Movies',
                                      style: kMaincard3Btn,
                                    ),
                                    Text(
                                      'Categories',
                                      style: kMaincard3Btn,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : kheight,
              ],
            ),
          ),
        );
      },
    ));
  }
}
