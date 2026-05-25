import 'package:flutter/material.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';

class MoviePosterWidget extends StatelessWidget {
  final String image;
  final double aspectRatio;
  const MoviePosterWidget({
    super.key,
    required this.image,
    this.aspectRatio = 2 / 3,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
        ),
      ),
    );
  }
}
