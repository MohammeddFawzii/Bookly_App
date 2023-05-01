import 'package:flutter/material.dart';

class BookModel {
  final String image;
  final String headLine;
  final String? auther;
  final num? price;
  final num? rating;

  BookModel({
    required this.image,
    required this.headLine,
    @required this.auther,
    @required this.price,
    @required this.rating,
  });

  factory BookModel.fromJson(dynamic jsonData) {
    return BookModel(
      image: jsonData["volumeInfo"]["imageLinks"]?["thumbnail"],
      headLine: jsonData["volumeInfo"]["title"],
      auther: jsonData["volumeInfo"]["authors"][0],
      price: jsonData["volumeInfo"]["listPrice"]?["amount"],
      rating: jsonData["volumeInfo"]["averageRating"],
    );
  }
}
