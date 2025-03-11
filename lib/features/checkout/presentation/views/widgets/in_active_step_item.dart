import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.title, required this.index});
  final String title, index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 23,
          width: 23,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xfff2f3f3)),
          child: Center(
            child: Text(
              index,
              style: TextStyles.semiBold13,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: TextStyles.semiBold13.copyWith(
            color: Colors.black.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
