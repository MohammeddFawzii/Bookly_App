import 'package:bookly_app/featurs/book_details/views/book_details_view.dart';
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
      height: MediaQuery.of(context).size.height * .24,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              var currentBook = books[index];
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return  BookDetailsView(bookModel: currentBook,);
                },
              ));
            },
            child: FeaturedBookItem(bookModel: books[index]),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
