import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/widgets/custom_appbar.dart';
import 'package:netflix_clone/features/downloads/presentation/widgets/downloads_string_section.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});
  static const images = [
    'https://image.tmdb.org/t/p/w600_and_h900_face/vbYoC9wmfo2w7EDVXYrnX4PRBWr.jpg',
    'https://image.tmdb.org/t/p/w600_and_h900_face/glwttqpXxFyFt9wnuSp7I4Cxwo3.jpg',
    'https://image.tmdb.org/t/p/w600_and_h900_face/9RQhVb3r3mCMqYVhLoCu4EvuipP.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            //AppBar
            CustomAppbar(title: AppStr.downloads, onPressed: () {}),
            SizedBox(height: size.height * .02),
            const DownloadsStringsSection(),
          ],
        ),
      ),
    );
  }
}
