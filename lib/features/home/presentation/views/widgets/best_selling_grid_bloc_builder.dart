import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruits_hub/core/helper_functions/get_dummy_data.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/best_selling_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridBlocBuilder extends StatelessWidget {
  const BestSellingGridBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingGrid(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
              child: Center(child: Text(state.errorMessage)));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGrid(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
