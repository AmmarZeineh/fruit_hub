import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_items_list.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_total_price_button.dart';

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
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CartHeader(
                    count: context.watch<CartCubit>().cartEntity.items.length,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Visibility(
                  visible:
                      context.read<CartCubit>().cartEntity.items.isNotEmpty,
                  child: const CustomDivider()),
            ),
            CartItemsList(
              items: context.watch<CartCubit>().cartEntity.items,
            ),
            SliverToBoxAdapter(
              child: Visibility(
                  visible:
                      context.read<CartCubit>().cartEntity.items.isNotEmpty,
                  child: const CustomDivider()),
            ),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * .08,
          child: const CustomTotalPriceButton(),
        ),
      ],
    );
  }
}
