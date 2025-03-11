import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class ArrowSwapHorizontalButton extends StatelessWidget {
  const ArrowSwapHorizontalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xffeaebeb),
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: Colors.white),
      onPressed: () {},
      child: SvgPicture.asset(Assets.imagesArrowSwapHorizontalIcon),
    );
  }
}
