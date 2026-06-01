import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';

class ComingSoonMovieImage extends StatelessWidget {
  final String image;
  const ComingSoonMovieImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width < AppBreakpoints.tablet
          ? double.infinity
          : AppBreakpoints.mobile,
      child: MoviePosterWidget(
        borderRadius: 0,
        aspectRatio: 16 / 9,
        image: image,
      ),
    );
  }
}
