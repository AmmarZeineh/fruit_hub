import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.title,
      required this.image,
      required this.onPressed});
  final String title;
  final String image;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffDDDFDF)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: ListTile(
        leading: SvgPicture.asset(image),
        visualDensity:
            const VisualDensity(vertical: VisualDensity.minimumDensity),
        title: Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyles.semiBold16,
        ),
      ),
    );
  }
}
