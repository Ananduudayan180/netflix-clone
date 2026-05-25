import 'package:flutter/material.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/features/downloads/presentation/widgets/movie_poster_rotate.dart';

class DownloadsImageSection extends StatelessWidget {
  final List<String> images;
  const DownloadsImageSection({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.height / 3,
      height: size.height / 3.5,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: size.height / 4.1,
            width: double.infinity,
            child: Stack(
              children: [
                MoviePosterRotater(
                  height: size.height / 5.1,
                  alignment: Alignment.topRight,
                  angle: .3,
                  image: images[0],
                ),
                MoviePosterRotater(
                  height: size.height / 5.1,
                  alignment: Alignment.topLeft,
                  angle: -.3,
                  image: images[1],
                ),
                MoviePosterRotater(
                  height: size.height / 4.49,
                  alignment: Alignment.topCenter,
                  angle: 0,
                  image: images[2],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
