import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/get_user_data.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

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
      subtitle: Text(getUserData().name, style: TextStyles.bold16),
      trailing: const NotificationWidget(),
    );
  }
}
