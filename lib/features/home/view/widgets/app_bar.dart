import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    title: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Book ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        Text(
          "Store",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.deepOrange,
          ),
        ),
      ],
    ),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    toolbarHeight: 78,
  );
}
