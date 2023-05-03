import 'package:bookly_app/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../description_book/views/book_details_view.dart';

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
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, BookDetailsView.id);
          },
          child: SizedBox(
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
                          imageUrl: bookmodel.image!,
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
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "${bookmodel.price} \$",
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
                            bookmodel.rating.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 24),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const Divider(
          endIndent: 36,
        )
      ],
    );
  }
}
