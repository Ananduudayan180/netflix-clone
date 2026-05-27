import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/features/search/presentation/widgets/search_movies_list.dart';
import 'package:netflix_clone/features/search/presentation/widgets/search_textfield.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static List<String> images = [
    'https://image.tmdb.org/t/p/w600_and_h900_face/cWsBscZzwu5brg9YjNkGewRUvJX.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final _searchController = TextEditingController();
    final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextfield(controller: _searchController, onPressed: () {}),
          SizedBox(height: 10),
          Text(AppStr.topSearches, style: headlineSmall),
          SizedBox(height: 10),
          SearchMoviesList(images: images),
        ],
      ),
    );
  }
}
