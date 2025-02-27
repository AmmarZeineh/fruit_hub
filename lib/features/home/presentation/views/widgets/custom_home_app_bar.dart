import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Assets.imagesProfilePhoto),
      title: Text(
        'صباح الخير !..',
        style: TextStyles.regular16.copyWith(color: const Color(0XFF949D9E)),
      ),
      subtitle: const Text('أحمد مصطفي', style: TextStyles.bold16),
      trailing: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0XFFD8E3E7),
          borderRadius: BorderRadius.circular(100),
        ),
        child: SvgPicture.asset(Assets.imagesNotification),
      ),
    );
  }
}
