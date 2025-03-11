import 'package:fruits_hub/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({required this.productEntity, required this.quantity});

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    if (quantity > 0) {
      quantity--;
    }
  }

  num totalItemPrice() {
    return productEntity.price * quantity;
  }
}
