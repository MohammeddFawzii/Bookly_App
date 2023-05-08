
import 'package:flutter/material.dart';

import '../../../utils/api_servises.dart';
import '../../home/widgets/featurd_book_list.dart';

class ButtomRelatedBooksList extends StatelessWidget {
  const ButtomRelatedBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: FutureBuilder(
          future: BooksApiService.fetchFeaturedBooks(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return FeaturedBookList(books: snapshot.data!);
            }
          },
        ),
      ),
    );
  }
}
