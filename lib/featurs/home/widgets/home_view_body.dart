import 'package:flutter/material.dart';

import 'best_seller_list_future_builder.dart';
import 'featurd_books_list_future_builder.dart';
import 'home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  final SizedBox s1 = const SizedBox(height: 28);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: s1,
          ),
          const SliverToBoxAdapter(
            child: HomeHeader(),
          ),
          SliverToBoxAdapter(
            child: s1,
          ),
          const SliverToBoxAdapter(
            child: FeaturedBooksListFutureBuilder(),
          ),

          SliverToBoxAdapter(
            child: s1,
          ),
          const SliverToBoxAdapter(
            child: Text(
              "Newest Books",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          SliverToBoxAdapter(
            child: s1,
          ),

          // ,
          const SliverToBoxAdapter(
            child: BestSellerListFuturBuilder(),
          )
        ],
      ),
    );
    //  HomeVerticalList(verticalItems: verticalItems),
  }
}
