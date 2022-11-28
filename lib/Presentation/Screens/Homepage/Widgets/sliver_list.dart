import 'package:flutter/material.dart';

import '../../../Declarations/constants.dart';

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
            padding: EdgeInsets.only(left: kSpacing, bottom: 20, right: 10),
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
