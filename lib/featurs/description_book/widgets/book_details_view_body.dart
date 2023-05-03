import 'package:bookly_app/featurs/description_book/widgets/details_Item.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.books,
  });
  final List<dynamic> books;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(
          color: AppColors.iconsColor,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(24),
            child: Icon(Icons.shopping_cart),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, size: 25),
          ),
        ),
      ),
      body: DetailsItem(
        bookModel: books[0],
      ),
    );
  }
}
