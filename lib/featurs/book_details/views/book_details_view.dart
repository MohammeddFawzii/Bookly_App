import 'package:bookly_app/featurs/book_details/widgets/details_Item.dart';
import 'package:bookly_app/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
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
      body: DetailsItem(bookModel: bookModel),
    );
  }
}
