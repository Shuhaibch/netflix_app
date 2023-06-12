// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netflix_app/presantation/new&hot/widget/coming_soon_widget.dart';
import 'package:netflix_app/presantation/new&hot/widget/everyons_wacthing_widgets.dart';
import 'package:netflix_app/presantation/new&hot/widget/hot_and_new_appbar.dart';

class Screennewhot extends StatelessWidget {
  const Screennewhot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: HotAndNewAppBar(),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryonsWatching(context),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const ComingSoonWidget(),
      ),
    );
  }

  Widget _buildEveryonsWatching(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const EveryonsWacthingWidget(),
    );
  }
}
