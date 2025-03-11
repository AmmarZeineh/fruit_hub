import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item_action_buttons_widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 92,
            width: 73,
            color: const Color(0xfff3f5f7),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
              child: Image.asset(Assets.imagesFruitTest),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'فراولة',
                      style: TextStyles.bold13,
                    ),
                    const Spacer(),
                    SvgPicture.asset(Assets.imagesTrash)
                  ],
                ),
                Text(
                  '3 كيلو',
                  style: TextStyles.regular13
                      .copyWith(color: AppColors.secondaryColor),
                ),
                const CartItemActionButtonsWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
