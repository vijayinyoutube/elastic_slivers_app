import 'package:flutter/material.dart';

import '../../../Components/spacer.dart';
import '../../../Declarations/constants.dart';
import '../Widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBarBldr(),
          SliverToBoxAdapter(child: HeightSpacer(myHeight: kSpacing)),
          const SliverSearch(),
          const SliverListBldr(),
        ],
      ),
    );
  }
}

class SliverListBldr extends StatelessWidget {
  const SliverListBldr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: kPadding/2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                color: secondaryColor.withOpacity(0.3),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
          );
        },
        childCount: 20,
      ),
    );
  }
}

class SliverSearch extends StatelessWidget {
  const SliverSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
        backgroundColor:  Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        pinned: true,
        flexibleSpace: const Center(child: SearchBar()));
  }
}

class SliverAppBarBldr extends StatelessWidget {
  const SliverAppBarBldr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      centerTitle: false,
      stretch: true,
      expandedHeight: 300.0,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [StretchMode.zoomBackground],
        background: Image(
          image: AssetImage('assets/Images/feature.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
