import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';

class NumberMovieCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  const NumberMovieCard({
    super.key,
    required this.index,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.height / 4,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              //movie poster
              Align(
                alignment: Alignment.topRight,
                child: MoviePosterWidget(image: imageUrl),
              ),
              //number
              Positioned(
                left: -12,
                bottom: 0,
                child: SizedBox(
                  height: constraints.maxHeight / 2,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: BorderedText(
                      strokeColor: AppColors.whiteText,
                      strokeWidth: 3,
                      child: Text(
                        '${index + 1}',
                        style: GoogleFonts.roboto(
                          fontSize: constraints.maxHeight,
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w900,
                          height: 0.72,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
