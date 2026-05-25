import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_image_url.dart';

class CustomAppbar extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  const CustomAppbar({super.key, this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final headlineMedium = Theme.of(context).textTheme.headlineMedium;
    return Row(
      children: [
        //1st
        title != null
            ? Text(title!, style: headlineMedium)
            : Image.asset(AppImageUrl.appLogo, height: 40),
        Spacer(),
        //2nd
        IconButton(onPressed: onPressed, icon: Icon(Icons.cast)),
        SizedBox(width: 16),
        //3rd
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: AssetImage(AppImageUrl.netflixAi)),
          ),
          width: 37,
          height: 35,
        ),
      ],
    );
  }
}
