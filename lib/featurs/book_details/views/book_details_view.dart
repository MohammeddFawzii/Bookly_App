import 'package:bookly_app/featurs/book_details/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import '../../../utils/api_servises.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static const id = "description";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchFeaturedBooks(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return BookDetailsViewBody(
            books: snapshot.data!,
          );
        }
      },
    );
  }
}
