import 'package:flutter/material.dart';

class BookModel {
  final String? image;
  final String headLine;
  final String? auther;
  final num? price;
  final num? rating;
  final String? description;
  final int? ratingCount;

  BookModel({
    @required this.ratingCount,
    @required this.image,
    required this.headLine,
    @required this.auther,
    @required this.price,
    @required this.rating,
    @required this.description,
  });

  factory BookModel.fromJson(dynamic jsonData) {
    return BookModel(
      image: jsonData["volumeInfo"]["imageLinks"]?["thumbnail"],
      headLine: jsonData["volumeInfo"]["title"],
      auther: jsonData["volumeInfo"]["authors"][0],
      price: jsonData["volumeInfo"]["listPrice"]?["amount"],
      rating: jsonData["volumeInfo"]["averageRating"],
      description: jsonData["volumeInfo"]["description"],
      ratingCount: jsonData["volumeInfo"]["ratingsCount"],
    );
  }
}
