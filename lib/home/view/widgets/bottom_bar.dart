import 'package:flutter/material.dart';

BottomNavigationBar homeBottomBar() {
  return BottomNavigationBar(
    selectedItemColor: Colors.blue,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: "Search",
        icon: Icon(Icons.search),
      ),
      BottomNavigationBarItem(
        label: "Cart",
        icon: Badge(
          label: Text("3"),
          child: Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
      ),
    ],
  );
}
