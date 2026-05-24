import 'package:flutter/material.dart';
import 'package:netflix_clone/core/app/bottom_nav_bar.dart';
import 'package:netflix_clone/features/downloads/presentation/screens/downloads_screen.dart';
import 'package:netflix_clone/features/fast_laughs/presentation/screens/fast_laughs_screen.dart';
import 'package:netflix_clone/features/home/presentation/screens/home_screen.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/screens/new_and_hot_screen.dart';
import 'package:netflix_clone/features/search/presentation/screens/search_screen.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int currentIndex = 0;
  final List<Widget> screens = const [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughsScreen(),
    SearchScreen(),
    DownloadsScreen(),
  ];

  void switchScreens(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavBar(
        onTap: switchScreens,
        currentIndex: currentIndex,
      ),
    );
  }
}
