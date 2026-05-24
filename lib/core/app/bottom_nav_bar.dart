import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onTap;
  final int currentIndex;
  const BottomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house_fill),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.flame_fill),
          label: "New & Hot",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions),
          label: "Fast Laughs",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.download), label: "Downloads"),
      ],
    );
  }
}
