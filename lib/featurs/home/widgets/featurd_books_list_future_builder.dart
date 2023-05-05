
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
        if (snapshot.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return FeaturedBookList(books: snapshot.data!);
        }
      },
    );
  }
}
