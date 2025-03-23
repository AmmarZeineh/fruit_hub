import 'package:fruits_hub/core/entities/product_entity.dart';

List<ProductEntity> getDummyProducts() {
  return List.generate(
    5,
    (index) => ProductEntity(
      avgRating: 0.0,
      name: 'Gummy Bear $index',
      code: 'GB$index',
      description: 'Gummy bear $index',
      expirationsMonths: 6,
      numberOfCalories: 100,
      unitAmount: 100,
      reviews: const [],
      price: 10.0,
      isOrganic: true,
      isFeatured: true,
      imageUrl: null,
    ),
  );
}
