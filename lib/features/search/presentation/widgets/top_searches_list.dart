import 'package:flutter/material.dart';
import 'package:netflix_clone/features/search/presentation/widgets/top_searches_list_tile.dart';

class TopSearchesList extends StatelessWidget {
  const TopSearchesList({super.key});

  static const imageUrl = [
    'https://media.themoviedb.org/t/p/w533_and_h300_face/gs8Mu6iK3w4HeBIaF0eHewxpQWz.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TopSearchesListTile(
            image: imageUrl[0],
            movieName: 'The House Maid',
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
      ),
    );
  }
}
