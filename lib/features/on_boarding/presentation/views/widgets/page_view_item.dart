import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.background,
      required this.title,
      required this.subtitle,
      required this.isVisiable});
  final String image, background, subtitle;
  final Widget title;
  final bool isVisiable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  background,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisiable,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'تخط',
                    style: TextStyles.regular13
                        .copyWith(color: const Color(0xff949D9E)),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            style:
                TextStyles.semiBold13.copyWith(color: const Color(0xFF4E5456)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
