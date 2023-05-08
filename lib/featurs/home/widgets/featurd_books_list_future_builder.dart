import 'package:flutter/material.dart';

import '../../../utils/api_servises.dart';
import 'featurd_book_list.dart';

class FeaturedBooksListFutureBuilder extends StatelessWidget {
  const FeaturedBooksListFutureBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchFeaturedBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return FeaturedBookList(books: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Center(
              child: Text(
            snapshot.error.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          ));
        }
      },
    );
  }
}
