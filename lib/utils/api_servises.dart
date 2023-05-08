import 'package:dio/dio.dart';

import '../models/book_model.dart';

abstract class BooksApiService {
  static const String _baseUrl = "https://www.googleapis.com/books/v1";
  static Future<List<BookModel>> fetchFeaturedBooks() async {
    try {
      final dio = Dio();
      var response = await dio.get('$_baseUrl/volumes?q=$apiKey');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      if (e is DioError) {
        var message = e.response?.data["error"]["message"] ?? "try later";
        throw Exception(message.toString());
      }
      throw Exception("somting went wrong try later");
    }
  }

  static Future<List<BookModel>> fetchBestSellerBooks() async {
    try {
      final dio = Dio();
      var response =
          await dio.get('$_baseUrl/volumes?q=$apiKey&orderBy=newest');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      if (e is DioError) {
        var message = e.response?.data["error"]["message"] ?? "try later";
        throw Exception(message.toString());
      }
      throw Exception("somting went wrong try later");
    }
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

String apiKey = "programming";
