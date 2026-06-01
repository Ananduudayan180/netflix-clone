import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/widgets/coming_soon_movie_details.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/widgets/coming_soon_movie_image.dart';

class ComingSoonMovieList extends StatelessWidget {
  const ComingSoonMovieList({super.key});

  static const String image =
      'https://media.themoviedb.org/t/p/w533_and_h300_face/sb76azrAXr9U13uEQxNP5e3fujY.jpg';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //date
            comingSoonDateWidget(context),
            //movie details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 16,
                  children: [
                    ComingSoonMovieImage(image: image),
                    ComingSoonMovieDetails(),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  //date widget
  Widget comingSoonDateWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width < AppBreakpoints.mobile ? 50 : 80,
      child: Column(
        children: [
          Text(
            'FEB',
            style: TextStyle(
              color: AppColors.greyText,
              fontWeight: FontWeight.bold,
            ),
            // style: bodySmall!.copyWith(color: AppColors.greyText),
          ),
          Text(
            '11',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: AppColors.whiteText,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
