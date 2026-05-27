import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';

class SearchMoviesList extends StatelessWidget {
  final List<String> images;
  const SearchMoviesList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppBreakpoints.isMobile(size.width)
              ? 3
              : AppBreakpoints.isTablet(size.width)
              ? 5
              : 9,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          return MoviePosterWidget(image: images[0]);
        },
      ),
    );
  }
}
