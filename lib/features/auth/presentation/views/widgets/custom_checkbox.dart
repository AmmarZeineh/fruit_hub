import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -8),
      child: GestureDetector(
        onTap: () {
          onChanged(!isChecked);
        },
        child: AnimatedContainer(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isChecked ? AppColors.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color:
                    isChecked ? Colors.transparent : const Color(0xFFDDDFDF)),
          ),
          duration: const Duration(milliseconds: 150),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(2),
                  child: SvgPicture.asset(Assets.imagesCheck))
              : null,
        ),
      ),
    );
  }
}
