import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/features/fast_laughs/presentation/widgets/action_widget.dart';
import 'package:netflix_clone/features/fast_laughs/presentation/widgets/page_view_builder.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  static final List<String> images = [
    'https://image.tmdb.org/t/p/w600_and_h900_face/cbODFqkcmRgrYH8NkG4Q4Hcg8Z1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: Stack(
          children: [
            PageViewBuilder(image: images[0]),
            ActionWidget(accountImage: images[0]),
          ],
        ),
      ),
    );
  }
}
