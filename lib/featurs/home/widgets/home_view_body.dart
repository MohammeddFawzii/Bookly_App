import 'package:flutter/material.dart';

import 'home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  final SizedBox s1 = const SizedBox(height: 28);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          s1,
          const HomeHeader(),
          s1,

          //  HomeVerticalList(verticalItems: verticalItems),
        ],
      ),
    );
  }
}
