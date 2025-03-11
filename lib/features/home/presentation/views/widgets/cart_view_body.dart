import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_items_list.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_divider.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  buildAppBar(
                    context,
                    title: 'السلة',
                    backButton: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CartHeader(),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomDivider(),
            ),
            const CartItemsList(),
            const SliverToBoxAdapter(
              child: CustomDivider(),
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * .08,
          child: CustomButton(text: 'الدفع  120جنيه', onPressed: () {}),
        ),
      ],
    );
  }
}
