import 'package:fruits_hub/features/home/domain/entities/cart_item_entity.dart';

class ProductOrderModel {
  final String name;
  final String code;
  final String imageUrl;
  final double price;
  final int quantity;

  ProductOrderModel(
      {required this.name,
      required this.code,
      required this.imageUrl,
      required this.price,
      required this.quantity});

  factory ProductOrderModel.fromEntity(CartItemEntity cartItemEntity) {
    return ProductOrderModel(
      name: cartItemEntity.productEntity.name,
      code: cartItemEntity.productEntity.code,
      imageUrl: cartItemEntity.productEntity.imageUrl!,
      price: cartItemEntity.productEntity.price.toDouble(),
      quantity: cartItemEntity.quantity,
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
    };
  }
}
