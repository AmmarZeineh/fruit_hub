import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemActionButtonsWidget extends StatelessWidget {
  const CartItemActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CartItemActionButton(
          color: AppColors.primaryColor,
          iconColor: Colors.white,
          iconData: Icons.add,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '3',
            style: TextStyles.bold16,
          ),
        ),
        const CartItemActionButton(
          color: Color(0xfff3f5f7),
          iconColor: Colors.grey,
          iconData: Icons.remove,
        ),
        const Spacer(),
        Text(
          '60 جنيه ',
          style: TextStyles.bold16.copyWith(color: AppColors.secondaryColor),
        )
      ],
    );
  }
}
