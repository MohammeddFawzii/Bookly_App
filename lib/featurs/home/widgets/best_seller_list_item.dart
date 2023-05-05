import 'package:bookly_app/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({
    super.key,
    required this.bookmodel,
  });
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    child: AspectRatio(
                      aspectRatio: 165 / 225,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: bookmodel.image??"https://media.istockphoto.com/id/1255906512/vector/error-500-page-empty-page-symbol-crash-banner-sorry-failure-graphic-message-vector.jpg?s=612x612&w=0&k=20&c=Jr0MgD_fj0d_O1PtJqA1y11IQ4_u2iLZqRJ2x3Mh2L4=",
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .6,
                        child: Text(
                          bookmodel.headLine,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontFamily: "FTLTLT"),
                        ),
                      ),
                    ),
                    Text(
                      bookmodel.auther!,
                      style: const TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          "${bookmodel.price ?? "FREE"} ",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "${bookmodel.rating ?? " 0 "}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 24),
                        ),
                        Text(
                          "(${bookmodel.ratingCount ?? "0"})",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 24),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
