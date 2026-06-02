import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/widgets/everyones_movie_details.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/widgets/movie_trailer_widget.dart';
import 'package:netflix_clone/features/new_and_hot/presentation/widgets/everyones_action_buttons.dart';

class EveryonesWatchingList extends StatelessWidget {
  final String image =
      'https://media.themoviedb.org/t/p/w533_and_h300_face/vjMvFSmGUxEtqVdaZgvFee9XkZl.jpg';
  const EveryonesWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Wrap(
                spacing: 20,
                runSpacing: 16,
                children: constraints.maxWidth < AppBreakpoints.tablet
                    ? [
                        EveryonesMovieDetails(),
                        MovieTrailerWidget(image: image),
                        EveryonesActionButtons(),
                      ]
                    : [
                        MovieTrailerWidget(image: image),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EveryonesMovieDetails(),
                            EveryonesActionButtons(),
                          ],
                        ),
                      ],
              );
            },
          ),
        );
      },
    );
  }
}
