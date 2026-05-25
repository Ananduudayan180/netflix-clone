import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';

class DownloadsStringsSection extends StatelessWidget {
  const DownloadsStringsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final headlineMedium = Theme.of(context).textTheme.headlineMedium;
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.settings),
            SizedBox(width: 10),
            Text(AppStr.smartDownloads),
          ],
        ),
        SizedBox(height: size.height * .06),
        Text(AppStr.introducingDownloads, style: headlineMedium),
        SizedBox(height: size.height * .013),
        Text(
          textAlign: TextAlign.center,
          AppStr.downloadSubtitle,
          style: TextStyle(color: AppColors.greyText),
        ),
      ],
    );
  }
}
