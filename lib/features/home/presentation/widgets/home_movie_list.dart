import 'package:flutter/material.dart';
import 'package:netflix_clone/core/widgets/movie_poster_widget.dart';
import 'package:netflix_clone/features/home/presentation/widgets/number_movie_card.dart';

class HomeMovieList extends StatelessWidget {
  final List<String> images;
  final String title;
  final bool withNumber;
  const HomeMovieList({
    super.key,
    required this.images,
    required this.title,
    this.withNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title
          Text(title, style: headlineSmall),
          SizedBox(height: 5),
          //Movies list
          SizedBox(
            height: size.height / 3.5,
            child: ListView.separated(
              itemCount: 9,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return withNumber
                    //numbers movie cards
                    ? NumberMovieCard(index: index, imageUrl: images[0])
                    //without num
                    : MoviePosterWidget(image: images[0]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: withNumber ? 0 : 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
