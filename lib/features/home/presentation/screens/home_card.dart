import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/widgets/custom_appbar.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';
import 'package:netflix_clone/features/home/presentation/widgets/card_bottom_section.dart';
import 'package:netflix_clone/features/home/presentation/widgets/card_top_section.dart';

class HomeCard extends StatelessWidget {
  final String image;
  const HomeCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height * .8;
    final width = height * (2 / 3);
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Center(child: MoviePosterWidget(borderRadius: 0, image: image)),
          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomAppbar(onPressed: () {}),
          ),
          Center(
            child: SizedBox(
              width: width,
              height: height * .9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTopSection(), CardBottomSection()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
