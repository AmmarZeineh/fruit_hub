import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/widgets/fruit_item.dart';

class BestSellingGrid extends StatelessWidget {
  const BestSellingGrid({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 158 / 214,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FruitItem(
          product: products[index],
        );
      },
      itemCount: products.length,
    );
  }
}
