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
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BestSellerList(books: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Center(
              child: Text(
            snapshot.error.toString(),
            style: const TextStyle(color: Colors.white),
          ));
        }
      },
    );
  }
}
