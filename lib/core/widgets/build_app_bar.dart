import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

AppBar buildAppBar(BuildContext context,
    {required String title,
    bool notification = false,
    bool backButton = false}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Visibility(
        visible: notification,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: NotificationWidget(),
        ),
      ),
    ],
    leading: Visibility(
      visible: backButton,
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new)),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
  );
}
