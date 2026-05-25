import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';

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
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < AppBreakpoints.mobile;
    final isTablet =
        size.width > AppBreakpoints.mobile &&
        size.width < AppBreakpoints.tablet;
    return SizedBox(
      height: 90,
      child: Align(
        alignment: isMobile ? Alignment.bottomCenter : Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(isMobile ? 0 : 30),
          child: SizedBox(
            width: isMobile
                ? double.infinity
                : isTablet
                ? AppBreakpoints.tabletNavBarWidth
                : AppBreakpoints.desktopNavBarWidth,
            child: BottomNavigationBar(
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
                BottomNavigationBarItem(
                  icon: Icon(Icons.download),
                  label: "Downloads",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
