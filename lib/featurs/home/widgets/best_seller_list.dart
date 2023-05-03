import 'package:bookly_app/featurs/home/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
    required this.books,
  });
  final List<dynamic> books;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BestSellerListItem(bookmodel: books[index]);
          },
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
