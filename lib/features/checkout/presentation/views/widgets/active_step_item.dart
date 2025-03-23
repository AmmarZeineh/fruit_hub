import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 23,
          width: 23,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primaryColor),
          child: Center(child: SvgPicture.asset(Assets.imagesCheck)),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: TextStyles.bold13.copyWith(color: AppColors.primaryColor),
        )
      ],
    );
  }
}
