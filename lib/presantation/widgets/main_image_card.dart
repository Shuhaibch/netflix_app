import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../home/screen_home.dart';

class MainImageCard extends StatelessWidget {
  const MainImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 120,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: kRadius12,
          image: const DecorationImage(
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
