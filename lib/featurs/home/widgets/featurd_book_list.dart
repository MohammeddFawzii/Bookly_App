import 'package:bookly_app/featurs/book_details/views/book_details_view.dart';
import 'package:bookly_app/featurs/home/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/utils/api_servises.dart';

class FeaturedBookList extends StatefulWidget {
  const FeaturedBookList({
    super.key,
    required this.books,
  });

  final List<dynamic> books;

  @override
  State<FeaturedBookList> createState() => _FeaturedBookListState();
}

class _FeaturedBookListState extends State<FeaturedBookList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .24,
      child: ListView.builder(
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, BookDetailsView.id);
            },
            child: FeaturedBookItem(bookModel: boooks[index]),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
