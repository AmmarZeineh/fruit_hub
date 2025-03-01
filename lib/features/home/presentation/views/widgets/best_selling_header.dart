import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('الاكثر مبيعا', style: TextStyles.bold16),
        const Spacer(),
        TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          onPressed: () {
            Navigator.pushNamed(context, BestSellingView.routeName);
          },
          child: Text(
            'المزيد',
            style: TextStyles.regular13.copyWith(
              color: const Color(0xff949D9E),
            ),
          ),
        )
      ],
    );
  }
}
