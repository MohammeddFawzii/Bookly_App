import 'package:dio/dio.dart';

import '../models/book_model.dart';

abstract class BooksApiService {
  static const String _baseUrl = "https://www.googleapis.com/books/v1";
  static Future<List<BookModel>> fetchFeaturedBooks() async {
    try {
      final dio = Dio();
      var response = await dio.get('$_baseUrl/volumes?q=programming');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      throw Exception("Erorr");
    }
  }

  static Future<List<BookModel>> fetchBestSellerBooks() async {
    final dio = Dio();
    var response = await dio.get('$_baseUrl/volumes?q=pr&orderBy=newest');

    List<BookModel> books = parseData(response);
    return books;
  }

  static List<BookModel> parseData(Response<dynamic> response) {
    List<BookModel> books = [];
    var items = response.data['items'];
    for (var bookMap in items) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}

