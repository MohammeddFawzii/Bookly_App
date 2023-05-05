import 'package:bookly_app/featurs/home/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

import '../../book_details/views/book_details_view.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
    required this.books,
  });
  final List<dynamic> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: books.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              var currentBook = books[index];
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return BookDetailsView(
                    bookModel: currentBook,
                  );
                },
              ));
            },
            child: BestSellerListItem(bookmodel: books[index]));
      },
      scrollDirection: Axis.vertical,
    );
  }
}
