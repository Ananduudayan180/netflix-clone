import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/core/widgets/custom_appbar.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/screens/coming_soon_movie_list.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomAppbar(title: AppStr.newAndHot, onPressed: () {}),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: AppBreakpoints.mobile,
              child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsetsGeometry.all(6),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: AppColors.transparent,
                labelStyle: bodySmall,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.whiteButton,
                ),
                tabs: [
                  Tab(text: AppStr.commingSoon),
                  Tab(text: AppStr.evWatching),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(children: [ComingSoonMovieList(), Text('hello')]),
          ),
        ],
      ),
    );
  }
}
