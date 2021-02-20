import 'package:flutter/material.dart';

/// Основное меню приложения
class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavigationBar({Key key, @required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this.currentIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Theme.of(context).backgroundColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "",
        ),
      ],
    );
  }
}
