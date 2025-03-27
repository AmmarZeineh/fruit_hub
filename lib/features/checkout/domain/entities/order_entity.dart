import 'package:fruits_hub/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_entity.dart';

class OrderInputEntity {
  final String uID;
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity? shippingAddressEntity;
  OrderInputEntity(
    this.cartEntity, {
    this.payWithCash,
    required this.uID,
    this.shippingAddressEntity,
  });

  calculateShippingPrice() {
    if (payWithCash!) {
      return 30;
    } else {
      return 0;
    }
  }

  calculateShippingDiscount() {
    return 0;
  }

  calculateTotalPriceAfterShippingAndDiscount() {
    return cartEntity.calculateTotalPrice() +
        calculateShippingPrice() -
        calculateShippingDiscount();
  }

  @override
  toString() {
    return 'OrderInputEntity(uID: $uID, cartEntity: $cartEntity, payWithCash: $payWithCash, shippingAddressEntity: $shippingAddressEntity)';
  }
}
