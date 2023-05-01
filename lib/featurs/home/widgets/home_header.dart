
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 100,
          child: Image(
            image: AssetImage(AppImages.appLogo),
          ),
        ),
        Spacer(),
        Icon(
          Icons.search,
          color: AppColors.iconsColor,
          size: 32,
        ),
      ],
    );
  }
}