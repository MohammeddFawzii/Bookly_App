
import 'package:flutter/material.dart';

import '../../../utils/api_servises.dart';
import 'best_seller_list.dart';

class BestSellerListFuturBuilder extends StatelessWidget {
  const BestSellerListFuturBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchBestSellerBooks(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return BestSellerList(books: snapshot.data!);
        }
      },
    );
  }
}
