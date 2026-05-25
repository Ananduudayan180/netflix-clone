import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/core/widgets/common_elevated_button.dart';

class DowloadsButtonSection extends StatelessWidget {
  final VoidCallback setUpOnTap;
  final VoidCallback seeDwldOnTap;
  const DowloadsButtonSection({
    super.key,
    required this.setUpOnTap,
    required this.seeDwldOnTap,
  });

  @override
  Widget build(BuildContext context) {
    final downloadsButtonThme = GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;
        return Column(
          children: [
            CommonElevatedButton(
              text: AppStr.setUpButton,
              onPressed: setUpOnTap,
              bgColor: AppColors.blueAccentButton,
              style: downloadsButtonThme,
            ),
            SizedBox(height: 10),
            CommonElevatedButton(
              text: AppStr.seeDowloadsButton,
              onPressed: seeDwldOnTap,
              fgColor: AppColors.blackText,
              style: downloadsButtonThme,
              buttonSize: Size(width * .8, 44),
            ),
          ],
        );
      },
    );
  }
}
