import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> items;

  CartEntity({required this.items});

  num get totalCost {
    num total = 0;
    for (var item in items) {
      total += item.totalItemPrice();
    }
    return total;
  }

  bool isExists(ProductEntity productEntity) {
    for (var item in items) {
      if (item.productEntity == productEntity) {
        return true;
      }
    }
    return false;
  }

  void addCartItem(CartItemEntity cartItemEntity) {
    items.add(cartItemEntity);
  }

  void removeCartItem(CartItemEntity cartItemEntity) {
    items.remove(cartItemEntity);
  }

  CartItemEntity getCarItem(ProductEntity productEntity) {
    for (var item in items) {
      if (item.productEntity == productEntity) {
        return item;
      }
    }
    return CartItemEntity(productEntity: productEntity, quantity: 1);
  }
}
