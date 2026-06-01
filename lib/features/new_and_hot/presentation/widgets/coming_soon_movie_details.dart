import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/core/widgets/common_icon_button.dart';

class ComingSoonMovieDetails extends StatelessWidget {
  const ComingSoonMovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return SizedBox(
      width: size.width < AppBreakpoints.tablet
          ? double.infinity
          : AppBreakpoints.mobile,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'TALL GIRL 2',
                style: GoogleFonts.amaticSc(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: AppColors.whiteText,
                ),
              ),
              Spacer(),
              CommonIconButton(
                iconName: AppStr.remindMe,
                nameColor: AppColors.greyText,
                icon: CupertinoIcons.bell,
                onPressed: () {},
              ),
              CommonIconButton(
                iconName: AppStr.info,
                nameColor: AppColors.greyText,
                icon: CupertinoIcons.info_circle,
                onPressed: () {},
              ),
            ],
          ),
          //3rd
          Text(
            'Coming on Friday',
            style: GoogleFonts.poppins(color: AppColors.whiteText),
          ),
          SizedBox(height: 16),
          Text(
            'Tall Girl 2',
            style: bodySmall!.copyWith(color: AppColors.whiteText),
          ),
          SizedBox(height: 10),
          Text(
            'Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence - and her relationship- into a tailspin.',
            style: TextStyle(color: AppColors.greyText),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
