import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/arrow_swap_horizintal_button.dart';

class OurProductsHeader extends StatelessWidget {
  const OurProductsHeader({super.key, required this.productsCount});
  final int productsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$productsCount نتائج',
          style: TextStyles.bold16,
        ),
        const ArrowSwapHorizontalButton(),
      ],
    );
  }
}
