import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_breakpoints.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/core/widgets/common_icon_button.dart';

class EveryonesActionButtons extends StatelessWidget {
  const EveryonesActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width < AppBreakpoints.tablet ? double.infinity : 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CommonIconButton(
            iconName: AppStr.share,
            icon: Icons.send,
            nameColor: AppColors.greyText,
            onPressed: () {},
          ),
          CommonIconButton(
            iconName: AppStr.myList,
            icon: CupertinoIcons.add,
            nameColor: AppColors.greyText,
            onPressed: () {},
          ),
          CommonIconButton(
            iconName: AppStr.play,
            icon: CupertinoIcons.play_fill,
            nameColor: AppColors.greyText,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
