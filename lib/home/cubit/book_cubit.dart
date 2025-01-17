import 'package:book_store/home/cubit/book_state.dart';
import 'package:book_store/home/data/services/book_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());
  BookService bookService = BookService();

  getBookDataCubit() async {
    emit(LoadingState());
    var success = await bookService.getBookData();
    emit(SuccessState(bookCardModel: success));
  }
}
