import 'package:bookly_app/featurs/home/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookList extends StatelessWidget {
  const FeaturedBookList({
    super.key,
    required this.books,
  });

  final List<dynamic> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return FeaturedBookItem(bookModel: books[index]) ;
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
