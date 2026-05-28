import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/presentation/widgets/home_movie_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<String> imageUrl1 = [
    'https://image.tmdb.org/t/p/w600_and_h900_face/6pzI1DIlxwAFffw9OZcG6cr031U.jpg',
  ];

  static final List<String> imageUrl2 = [
    'https://image.tmdb.org/t/p/w600_and_h900_face/1yLZ7kExd0UGGbaZW4LxmYD4OIf.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeMovieList(images: imageUrl1, title: 'Released in the Past Year'),
          HomeMovieList(images: imageUrl1, title: 'Trending Now'),
          HomeMovieList(
            images: imageUrl2,
            title: 'Top 10 TV Shows in India Today',
            withNumber: true,
            // withNumber: true,
          ),
        ],
      ),
    );
  }
}
