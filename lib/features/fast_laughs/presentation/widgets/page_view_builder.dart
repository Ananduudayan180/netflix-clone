import 'package:flutter/material.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';

class PageViewBuilder extends StatelessWidget {
  final String image;
  const PageViewBuilder({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 20,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return MoviePosterWidget(aspectRatio: 9 / 16, image: image);
      },
    );
  }
}
