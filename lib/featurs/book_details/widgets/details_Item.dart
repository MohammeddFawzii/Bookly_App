import 'package:bookly_app/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../utils/api_servises.dart';
import '../../home/widgets/featurd_book_list.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: 162,
              height: 243,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: bookModel.image ??
                    "https://media.istockphoto.com/id/1255906512/vector/error-500-page-empty-page-symbol-crash-banner-sorry-failure-graphic-message-vector.jpg?s=612x612&w=0&k=20&c=Jr0MgD_fj0d_O1PtJqA1y11IQ4_u2iLZqRJ2x3Mh2L4=",
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            bookModel.headLine,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Text(
            bookModel.auther!,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff686572),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const Text(" "),
              Text(
                "${bookModel.rating ?? " 0 "}",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Text("  "),
              Text(
                "(${bookModel.ratingCount ?? "0"})",
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                height: 58,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: Text(
                      "${bookModel.price ?? "FREE"} ",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                height: 58,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: Text(
                      "Free Preview",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 38),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "You can Also Like ",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: FutureBuilder(
                future: BooksApiService.fetchFeaturedBooks(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return FeaturedBookList(books: snapshot.data!);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
