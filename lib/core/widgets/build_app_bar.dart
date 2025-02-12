import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';

AppBar buildAppBar({required String title, required BuildContext context}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new)),
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
  );
}
