import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';

class EveryonesMovieDetails extends StatelessWidget {
  const EveryonesMovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width < AppBreakpoints.tablet
          ? double.infinity
          : AppBreakpoints.mobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Friends', style: headlineSmall),
          SizedBox(height: 10),
          Text(
            'This hit storyline follows jodi, a 16-year-old high schooler who is taller than her peers and struggles with body confidence.',
            style: TextStyle(color: AppColors.greyText),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
