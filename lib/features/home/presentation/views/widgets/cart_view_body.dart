import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: CartItem(),
              )
            ],
          ),
        )
      ],
    );
  }
}
