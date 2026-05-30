import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_str.dart';

class CardTopSection extends StatelessWidget {
  const CardTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 16),
        SizedBox(
          height: size.height * .03,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FittedBox(child: Text(AppStr.tvShows)),
              FittedBox(child: Center(child: Text(AppStr.movies))),
              FittedBox(child: Center(child: Text(AppStr.categories))),
            ],
          ),
        ),
      ],
    );
  }
}
