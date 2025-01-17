import 'package:book_store/home/data/models/book_card_model.dart';
import 'package:dio/dio.dart';

class BookService {
  Future<List<BookCardModel>> getBookData() async {
    final Dio dio = Dio();
    Response response = await dio.get(
      'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science',
    );
    Map<String, dynamic> jsonData = response.data;
    try {
      if (response.statusCode == 200) {
        List bookItem = jsonData["items"];
        List<BookCardModel> mappingItems =
            bookItem.map((e) => BookCardModel.fromJson(e)).toList();

        return mappingItems;
      } else {
        throw Exception("sorry");
      }
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      } else {
        throw Exception("sorry");
      }
    }
  }
}
