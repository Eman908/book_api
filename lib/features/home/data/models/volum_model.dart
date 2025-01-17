import 'package:book_store/features/home/data/models/image_model.dart';

class VolumModel {
  final String title;
  final List authors;
  final num pageCount;
  final List categories;
  final String previewLink;
  final ImageModel imageModell;

  VolumModel(
      {required this.title,
      required this.authors,
      required this.pageCount,
      required this.categories,
      required this.imageModell,
      required this.previewLink});

  factory VolumModel.fromJson(Map<String, dynamic> json) {
    return VolumModel(
      title: json["title"],
      authors: json["authors"],
      pageCount: json["pageCount"],
      categories: json["categories"],
      imageModell: ImageModel.fromJson(
        json["imageLinks"],
      ),
      previewLink: json["previewLink"],
    );
  }
}
