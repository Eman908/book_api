import 'package:book_store/home/data/models/book_card_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key, required this.bookCardModel});
  final BookCardModel bookCardModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              launchUrlString(bookCardModel.volumModel.previewLink);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    bookCardModel.volumModel.imageModell.thumbnail,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          bookCardModel.volumModel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          bookCardModel.volumModel.authors[0],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              "${bookCardModel.volumModel.pageCount.toString()} Page",
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                launchUrlString(bookCardModel.volumModel.previewLink);
              },
              child: const Icon(
                Icons.open_in_new,
                color: Colors.deepOrange,
              ),
            )
          ],
        ),
      ],
    );
  }
}
