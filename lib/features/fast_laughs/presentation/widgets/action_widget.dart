import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants/app_str.dart';
import 'package:netflix_clone/core/widgets/common_icon_button.dart';
import 'package:netflix_clone/features/fast_laughs/presentation/widgets/accout_button.dart';

class ActionWidget extends StatelessWidget {
  final String? accountImage;
  const ActionWidget({super.key, this.accountImage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: size.height / 2.6,
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //account button
              AccoutButton(accountImage: accountImage, onPressed: () {}),
              //icons
              CommonIconButton(
                iconName: AppStr.lol,
                icon: Icons.emoji_emotions,
                onPressed: () {},
              ),
              CommonIconButton(
                iconName: AppStr.myList,
                icon: CupertinoIcons.add,
                onPressed: () {},
              ),
              CommonIconButton(
                iconName: AppStr.share,
                icon: Icons.send,
                onPressed: () {},
              ),
              CommonIconButton(
                iconName: AppStr.play,
                icon: CupertinoIcons.play_fill,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
