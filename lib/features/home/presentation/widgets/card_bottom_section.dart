import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';
import 'package:netflix_clone/core/widgets/common_elevated_button.dart';
import 'package:netflix_clone/core/widgets/common_icon_button.dart';

class CardBottomSection extends StatelessWidget {
  const CardBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //1st icon
          FittedBox(
            child: CommonIconButton(
              icon: CupertinoIcons.add,
              withShadow: false,
              iconName: AppStr.add,
              onPressed: () {},
            ),
          ),
          //2nd icon
          FittedBox(
            fit: BoxFit.scaleDown,
            child: CommonElevatedButton(
              icon: Icon(CupertinoIcons.play_fill),
              buttonSize: Size(88, 18),
              text: AppStr.play,
              fgColor: AppColors.blackText,
              onPressed: () {},
            ),
          ),
          //3rd icon
          FittedBox(
            child: CommonIconButton(
              icon: CupertinoIcons.info,
              withShadow: false,
              iconName: AppStr.info,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
