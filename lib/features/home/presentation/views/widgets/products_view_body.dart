import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/our_products_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/products_grid_bloc_builder.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getProducts();
    super.initState();
  }

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
              buildAppBar(context, title: 'المنتجات', notification: true),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                const SearchTextField(),
                const SizedBox(
                  height: 16,
                ),
                OurProductsHeader(
                  productsCount: context.read<ProductsCubit>().productsCount,
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        ),
        const ProductsGridBlocBuilder(),
      ],
    );
  }
}
