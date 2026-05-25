import 'package:flutter/material.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';

class CommonElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Size? buttonSize;
  final Color? bgColor;
  final Color? fgColor;
  final TextStyle? style;
  final Widget? icon;

  const CommonElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonSize,
    this.icon,
    this.style,
    this.bgColor,
    this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: bgColor ?? AppColors.whiteButton,
        foregroundColor: fgColor ?? AppColors.whiteButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
      ),
      onPressed: onPressed,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 44, maxWidth: 450),
        child: SizedBox(
          height: buttonSize?.height ?? 44,
          width: buttonSize?.width ?? double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null ? icon! : SizedBox.shrink(),
              Text(text, style: style),
            ],
          ),
        ),
      ),
    );
  }
}
