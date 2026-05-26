import 'package:flutter/material.dart';
import 'package:netflix_clone/core/theme/app_colors.dart';

class AccoutButton extends StatelessWidget {
  final String? accountImage;
  final VoidCallback onPressed;
  const AccoutButton({super.key, this.accountImage, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.surface,
          boxShadow: [BoxShadow(offset: Offset(2, 2), blurRadius: 4)],
          image: accountImage != null
              ? DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(accountImage ?? ''),
                )
              : null,
        ),
      ),
    );
  }
}
