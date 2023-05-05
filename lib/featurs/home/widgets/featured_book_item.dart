import 'package:flutter/material.dart';
import '../../../models/book_model.dart';
import '../../../utils/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .24,
              child: AspectRatio(
                aspectRatio: 165 / 225,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: bookModel.image ??
                      "https://media.istockphoto.com/id/1255906512/vector/error-500-page-empty-page-symbol-crash-banner-sorry-failure-graphic-message-vector.jpg?s=612x612&w=0&k=20&c=Jr0MgD_fj0d_O1PtJqA1y11IQ4_u2iLZqRJ2x3Mh2L4=",
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.4)),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.iconsColor,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
