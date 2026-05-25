import 'package:flutter/material.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';

class MoviePosterRotater extends StatelessWidget {
  final double height;
  final double angle;
  final String image;
  final AlignmentGeometry alignment;
  const MoviePosterRotater({
    super.key,
    required this.height,
    required this.alignment,
    required this.angle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Align(
        alignment: alignment,
        child: SizedBox(
          height: height,
          child: MoviePosterWidget(image: image),
        ),
      ),
    );
  }
}
