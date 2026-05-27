import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';

class TopSearchesListTile extends StatelessWidget {
  final String image;
  final String movieName;
  const TopSearchesListTile({
    super.key,
    required this.image,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = AppBreakpoints.isMobile(width);
    final isTablet = AppBreakpoints.isTablet(width);
    return Align(
      alignment: Alignment.topLeft,
      child: FittedBox(
        child: SizedBox(
          width: width < 1300 ? width : width / 1.5,
          child: Row(
            children: [
              SizedBox(
                width: isMobile
                    ? width / 2
                    : isTablet
                    ? width / 2.3
                    : 450,
                child: MoviePosterWidget(aspectRatio: 16 / 9, image: image),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    movieName,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: isMobile
                          ? 14
                          : isTablet
                          ? 16
                          : 18,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.play_circle),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
