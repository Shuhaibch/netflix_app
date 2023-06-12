import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/search/widget/title_widget.dart';

const _imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/2I5eBh98Q4aPq8WdQrHdTC8ARhY.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight2,
        const TitleWidget(title: 'Top Searches'),
        kheight2,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchItemTile(),
            separatorBuilder: (context, index) => kheight3,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.3 + 30,
          height: 75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(_imageUrl),
            ),
          ),
        ),
        kwidth,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: kWhiteColor,
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          size: 55,
        )
      ],
    );
  }
}
