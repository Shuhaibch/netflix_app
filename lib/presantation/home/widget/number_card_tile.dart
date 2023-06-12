// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../widgets/title_widget.dart';
import 'number_image_card.dart';

class NumberCardTile extends StatelessWidget {
  const NumberCardTile({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 5),
          child: MainTitleWidget(title: title),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              20,
              (index) => NumberImageCard(index: index),
            ),
          ),
        )
      ],
    );
  }
}
