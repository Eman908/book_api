import 'package:book_store/home/data/models/book_card_model.dart';

sealed class BookState {}

final class BookInitial extends BookState {}

final class SuccessState extends BookState {
  List<BookCardModel> bookCardModel;
  SuccessState({required this.bookCardModel});
}

final class LoadingState extends BookState {}
