import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  final String iconName;
  final IconData icon;
  final double padding;
  final VoidCallback onPressed;
  final bool withShadow;
  final Color? nameColor;

  const CommonIconButton({
    super.key,
    required this.iconName,
    required this.icon,
    required this.onPressed,
    this.nameColor,
    this.padding = 5,
    this.withShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: IconButton(
        onPressed: onPressed,
        icon: Column(
          children: [
            Icon(
              icon,
              shadows: withShadow
                  ? [Shadow(offset: Offset(2, 2), blurRadius: 4)]
                  : null,
            ),
            Text(
              textAlign: TextAlign.center,
              iconName,
              style: TextStyle(color: nameColor),
            ),
          ],
        ),
      ),
    );
  }
}
