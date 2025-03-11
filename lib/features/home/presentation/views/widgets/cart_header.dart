import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key, required this.count});
  final num count;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0Xffebf9f1),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'لديك $count منتجات في سله التسوق',
            style: TextStyles.regular13.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
