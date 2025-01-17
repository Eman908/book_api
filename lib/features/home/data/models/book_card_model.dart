import 'package:book_store/features/home/data/models/volum_model.dart';

class BookCardModel {
  final VolumModel volumModel;

  BookCardModel({required this.volumModel});

  factory BookCardModel.fromJson(Map<String, dynamic> json) {
    return BookCardModel(
      volumModel: VolumModel.fromJson(
        json["volumeInfo"],
      ),
    );
  }
}
