import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';

class SearchTextfield extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  const SearchTextfield({
    super.key,
    required this.controller,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 600,
        child: CupertinoTextField(
          controller: controller,
          cursorColor: AppColors.whiteText,
          style: TextStyle(color: AppColors.whiteText),
          placeholder: AppStr.search,
          placeholderStyle: TextStyle(color: AppColors.greyText),
          prefix: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              CupertinoIcons.search,
              color: AppColors.greyText,
              size: 23,
            ),
          ),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
